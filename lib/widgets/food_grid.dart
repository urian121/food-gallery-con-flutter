import 'package:flutter/material.dart';
import '../pages/detail_page.dart'; // Asegúrate de importar la página de detalles

class FoodGrid extends StatelessWidget {
  final List<dynamic> foodItems;

  const FoodGrid({super.key, required this.foodItems});

  @override
  Widget build(BuildContext context) {
    if (foodItems.isEmpty) {
      return const Center(child: Text('No hay alimentos disponibles.'));
    }

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
                            Icon(Icons.star, color: Colors.yellow[700], size: 16),
                            Text(' ${item['estrellas']}'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navegar a la página de detalles
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HeladoDetailPage(itemSeleccionado: item), // Navegar y pasar el item Seleccionado
                            ),
                          );
                        },
                        child: const Text('Ver Detalles'),
                      ),
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
