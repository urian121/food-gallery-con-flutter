import 'package:flutter/material.dart';
import '../widgets/food_grid.dart'; 

class HeladosPage extends StatelessWidget {
  final List<dynamic> helados;

  const HeladosPage({super.key, required this.helados});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Helados'), // Cambiar a "Helados"
      ),
      body: FoodGrid(foodItems: helados), // Aquí pasas los helados al FoodGrid
    );
  }
}
