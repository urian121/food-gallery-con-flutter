import 'package:flutter/material.dart';
import 'dart:convert';
import 'data/list_hamburguesas.dart'; // Importamos la lista de hamburguesas.
import 'data/list_tortas.dart'; // Importamos la lista de tortas.
import 'data/list_helados.dart'; // Importamos la lista de helados.
import 'pages/helados.dart'; // Importamos la lista de helados.
import 'pages/tortas.dart'; // Importamos la página de tortas.

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Carga los datos JSON de comidas y decodificar el string JSON a una lista de mapas dinámicos.
    final List<dynamic> foodItems = json.decode(jsonData);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFeastGallery',
      home: HomeScreen(foodItems: foodItems),
    );
  }
}

class HomeScreen extends StatefulWidget {
  final List<dynamic> foodItems;

  const HomeScreen({super.key, required this.foodItems});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Cambia esto para que use un widget de grilla para la página inicial
  List<Widget> _widgetOptions() {
    return [
      FoodGrid(foodItems: widget.foodItems), // Página de inicio
      TortasPage(tortas: parseTortas()), // Cambiar a Tortas
      HeladosPage(helados: parseHelados()), // Cambiar a Helados
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/imgs/logo.png', width: 200, height: 200),
        title: const Text('My Food Gallery'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body:
          _widgetOptions()[_selectedIndex], // Muestra la página correspondiente
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cake),
            label: 'Tortas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.icecream),
            label: 'Helados',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.orange, // Cambia el color de selección aquí
        unselectedItemColor:
            Colors.grey, // Cambia el color de los no seleccionados
      ),
    );
  }
}

class FoodGrid extends StatelessWidget {
  final List<dynamic> foodItems;

  const FoodGrid({super.key, required this.foodItems});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        final item = foodItems[index];

        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item['image']),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['nombre'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${item['precio'].toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.yellow[700], size: 16),
                            Text(' ${item['estrellas']}'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
