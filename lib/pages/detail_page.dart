import 'package:flutter/material.dart';

class HeladoDetailPage extends StatelessWidget {
  final dynamic itemSeleccionado;

  const HeladoDetailPage({super.key, required this.itemSeleccionado});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0, // Altura de la imagen cuando está expandida
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                itemSeleccionado['image'],
                fit: BoxFit.cover,
              ),
            ),
            iconTheme: const IconThemeData(
              color: Colors.white, // Cambia el color del icono de volver atrás
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemSeleccionado['nombre'],
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${itemSeleccionado['precio'].toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow[700], size: 26),
                            Text(' ${itemSeleccionado['estrellas']}', style: const TextStyle(fontSize: 20),),
                          ],
                        ),
                      ],
                    ),
                  Divider(color: Colors.grey[300], thickness: 1.0),
                  const SizedBox(height: 16.0),
                  Text(
                    itemSeleccionado['descripcion'],
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
