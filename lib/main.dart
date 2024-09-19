import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const List<String> imageAssets = [
    'assets/comidas/1.jpg',
    'assets/comidas/2.jpg',
    'assets/comidas/3.jpg',
    'assets/comidas/4.jpg',
    'assets/comidas/5.jpg',
    'assets/comidas/6.jpg',
    'assets/comidas/7.jpg',
    'assets/comidas/8.jpg',
    'assets/comidas/9.jpg',
    'assets/comidas/10.jpg',
    'assets/comidas/11.jpg',
    'assets/comidas/12.jpg',
    'assets/comidas/13.jpg',
    'assets/comidas/14.jpg',
    'assets/comidas/15.jpg',
    'assets/comidas/16.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Galería de Comidas', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.orangeAccent,
          centerTitle: true,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(8),
          // Esto crea una grilla de elementos.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Esto muestra dos elementos por fila.
            crossAxisSpacing: 10, // Añaden espacio entre los elementos.
            mainAxisSpacing: 10, // Añaden espacio entre los elementos.
            childAspectRatio: 0.75, // Esto hace que cada elemento sea un poco más alto que ancho.
          ),
          itemCount: imageAssets.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imageAssets[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Imagen ${index + 1}'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}