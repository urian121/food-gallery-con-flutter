import 'package:flutter/material.dart';
import 'dart:convert';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Datos JSON de comidas que serán mostradas en la galería.
  static const String jsonData = '''
  [
    {
      "id": 1,
      "image": "assets/comidas/1.jpg",
      "nombre": "Hamburguesa Clásica",
      "precio": 8.99,
      "estrellas": 4.5,
      "descripcion": "Una jugosa hamburguesa con queso, lechuga, tomate y una salsa especial."
    },
    {
      "id": 2,
      "image": "assets/comidas/2.jpg",
      "nombre": "Pizza Margherita",
      "precio": 12.50,
      "estrellas": 4.7,
      "descripcion": "Pizza con salsa de tomate, mozzarella fresca y hojas de albahaca."
    },
    {
      "id": 3,
      "image": "assets/comidas/3.jpg",
      "nombre": "Tacos al Pastor",
      "precio": 7.99,
      "estrellas": 4.8,
      "descripcion": "Tacos tradicionales mexicanos con carne al pastor, piña y cilantro."
    },
    {
      "id": 4,
      "image": "assets/comidas/4.jpg",
      "nombre": "Sushi Variado",
      "precio": 15.99,
      "estrellas": 4.6,
      "descripcion": "Un surtido de sushi fresco con salmón, atún y camarón."
    },
    {
      "id": 5,
      "image": "assets/comidas/17.jpg",
      "nombre": "Pizza Pepperoni",
      "precio": 11.99,
      "estrellas": 4.6,
      "descripcion": "Pizza clásica con pepperoni crujiente y queso derretido."
    },
    {
      "id": 6,
      "image": "assets/comidas/5.jpg",
      "nombre": "Ensalada César",
      "precio": 6.99,
      "estrellas": 4.2,
      "descripcion": "Ensalada con lechuga romana, crutones, queso parmesano y aderezo César."
    },
    {
      "id": 7,
      "image": "assets/comidas/6.jpg",
      "nombre": "Pasta Carbonara",
      "precio": 11.50,
      "estrellas": 4.4,
      "descripcion": "Pasta con una salsa cremosa de huevo, queso y panceta."
    },
    {
      "id": 8,
      "image": "assets/comidas/18.jpg",
      "nombre": "Pizza Hawaiana",
      "precio": 13.50,
      "estrellas": 4.4,
      "descripcion": "Pizza con piña, jamón y queso fundido."
    },
    {
      "id": 9,
      "image": "assets/comidas/7.jpg",
      "nombre": "Pollo Frito",
      "precio": 9.99,
      "estrellas": 4.3,
      "descripcion": "Pollo crujiente y jugoso acompañado de papas fritas."
    },
    {
      "id": 10,
      "image": "assets/comidas/8.jpg",
      "nombre": "Burrito de Carne",
      "precio": 8.50,
      "estrellas": 4.1,
      "descripcion": "Burrito relleno de carne de res, frijoles, arroz y salsa."
    },
    {
      "id": 11,
      "image": "assets/comidas/9.jpg",
      "nombre": "Sopa de Tomate",
      "precio": 5.99,
      "estrellas": 4.0,
      "descripcion": "Sopa cremosa de tomate, ideal para acompañar con pan crujiente."
    },
    {
      "id": 12,
      "image": "assets/comidas/19.jpg",
      "nombre": "Pizza Cuatro Quesos",
      "precio": 14.00,
      "estrellas": 4.8,
      "descripcion": "Pizza con una deliciosa mezcla de mozzarella, gorgonzola, parmesano y ricotta."
    },
    {
      "id": 13,
      "image": "assets/comidas/20.jpg",
      "nombre": "Pizza Vegetariana",
      "precio": 12.00,
      "estrellas": 4.2,
      "descripcion": "Pizza con champiñones, pimientos, cebolla y aceitunas."
    },
    {
      "id": 14,
      "image": "assets/comidas/10.jpg",
      "nombre": "Helado Sundae",
      "precio": 4.99,
      "estrellas": 4.9,
      "descripcion": "Helado con topping de chocolate, nueces y crema batida."
    },
    {
      "id": 15,
      "image": "assets/comidas/11.jpg",
      "nombre": "Nachos con Queso",
      "precio": 7.50,
      "estrellas": 4.2,
      "descripcion": "Nachos crujientes cubiertos con queso derretido y jalapeños."
    },
    {
      "id": 16,
      "image": "assets/comidas/12.jpg",
      "nombre": "Alitas de Pollo BBQ",
      "precio": 10.99,
      "estrellas": 4.6,
      "descripcion": "Alitas bañadas en salsa BBQ, perfectas para compartir."
    },
    {
      "id": 17,
      "image": "assets/comidas/13.jpg",
      "nombre": "Wrap de Pollo",
      "precio": 6.99,
      "estrellas": 4.3,
      "descripcion": "Wrap relleno de pollo a la parrilla, lechuga y aderezo ranch."
    },
    {
      "id": 18,
      "image": "assets/comidas/14.jpg",
      "nombre": "Fajitas de Res",
      "precio": 13.99,
      "estrellas": 4.7,
      "descripcion": "Fajitas de res con pimientos y cebolla, servidas con tortillas."
    },
    {
      "id": 19,
      "image": "assets/comidas/21.jpg",
      "nombre": "Pizza BBQ Pollo",
      "precio": 15.00,
      "estrellas": 4.7,
      "descripcion": "Pizza con pollo a la parrilla, salsa BBQ y queso cheddar."
    },
    {
      "id": 20,
      "image": "assets/comidas/22.jpg",
      "nombre": "Pizza Mexicana",
      "precio": 14.50,
      "estrellas": 4.5,
      "descripcion": "Pizza con chorizo, jalapeños, frijoles refritos y queso."
    },
    {
      "id": 21,
      "image": "assets/comidas/15.jpg",
      "nombre": "Smoothie de Frutas",
      "precio": 4.50,
      "estrellas": 4.4,
      "descripcion": "Batido fresco de frutas mixtas con base de yogur."
    },
    {
      "id": 22,
      "image": "assets/comidas/16.jpg",
      "nombre": "Donas Glaseadas",
      "precio": 3.99,
      "estrellas": 4.8,
      "descripcion": "Donas esponjosas cubiertas con un glaseado dulce."
    }
  ]
  ''';

  @override
  Widget build(BuildContext context) {
    // Carga los datos JSON de comidas y  decodificar el string JSON a una lista de mapas dinámicos.
    final List<dynamic> foodItems = json.decode(jsonData);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterFeastGallery',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App Galería de Comidas'),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(8),
          // Esto crea una grilla de elementos.
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Esto muestra dos elementos por fila.
            crossAxisSpacing: 10, // Añaden espacio entre los elementos.
            mainAxisSpacing: 10, // Añaden espacio entre los elementos.
            childAspectRatio:
                0.75, // Esto hace que cada elemento sea un poco más alto que ancho.
          ),
          itemCount: foodItems.length, // Total de elementos a mostrar.
          itemBuilder: (context, index) {
            final item = foodItems[index]; // Obtiene el ítem actual (comida).

            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    // Imagen de la comida dentro de la tarjeta.
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage(item['image']), // Ruta de la imagen.
                          fit: BoxFit
                              .cover, // Asegura que la imagen ocupe todo el espacio.
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(
                            8.0)), // Esto hace que la imagen sea redondeada.
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    // Muestra el nombre y los detalles (precio y estrellas).
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['nombre'], // Nombre de la comida.
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 15.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${item['precio'].toStringAsFixed(2)}', // Precio de la comida.
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.yellow[700],
                                    size: 16), // Icono de estrella.
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
        ),
      ),
    );
  }
}
