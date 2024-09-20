import 'package:flutter/material.dart';
import '../widgets/FoodGrid.dart'; // Asegúrate de que este import esté correcto

class TortasPage extends StatelessWidget {
  final List<dynamic> tortas;

  const TortasPage({super.key, required this.tortas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tortas'),
      ),
      body: FoodGrid(foodItems: tortas), // Aquí pasas las tortas al FoodGrid
    );
  }
}
