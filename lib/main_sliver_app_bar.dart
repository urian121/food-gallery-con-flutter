import 'package:flutter/material.dart';
import 'dart:convert';
import 'data/list_hamburguesas.dart'; // Importamos la lista de hamburguesas.
import 'data/list_tortas.dart'; // Importamos la lista de tortas.
import 'data/list_helados.dart'; // Importamos la lista de helados.
import 'pages/helados.dart'; // Importamos la página de helados.
import 'pages/tortas.dart'; // Importamos la página de tortas.
import 'widgets/food_grid.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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

  List<Widget> _widgetOptions() {
    return [
      FoodGrid(foodItems: widget.foodItems), // Página de inicio usando FoodGrid
      TortasPage(tortas: parseTortas()), // Página de tortas
      HeladosPage(helados: parseHelados()), // Página de helados
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Image.asset('assets/imgs/logo.png', width: 200, height: 200),
            title: const Text('My Food Gallery', 
              style: TextStyle(
                fontSize: 25, 
                color: Colors.black, 
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.orangeAccent,
            pinned: true, // Mantiene la barra visible al hacer scroll
            expandedHeight: 200.0, // Altura expandida del SliverAppBar
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/imgs/1.jpg',
                fit: BoxFit.cover, // Ajusta la imagen para que ocupe todo el espacio
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20), // Espacio antes de mostrar el contenido
          ),
          SliverFillRemaining(
            child: _widgetOptions()[_selectedIndex], // Muestra la página correspondiente
          ),
        ],
      ),
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
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
