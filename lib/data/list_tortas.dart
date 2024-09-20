// Importa la librería para trabajar con JSON (codificación y decodificación de datos).
import 'dart:convert';

const String jsonDataTortas = '''
[
  {
    "id": 1,
    "image": "assets/tortas/1.jpg",
    "nombre": "Torta de Chocolate",
    "precio": 15.99,
    "estrellas": 4.9,
    "descripcion": "Torta de chocolate esponjosa con capas de ganache y decorada con trozos de chocolate."
  },
  {
    "id": 2,
    "image": "assets/tortas/2.jpg",
    "nombre": "Torta de Vainilla",
    "precio": 13.50,
    "estrellas": 4.8,
    "descripcion": "Torta clásica de vainilla con crema de mantequilla y frutas frescas."
  },
  {
    "id": 3,
    "image": "assets/tortas/3.jpg",
    "nombre": "Torta de Red Velvet",
    "precio": 17.00,
    "estrellas": 4.7,
    "descripcion": "Torta suave de Red Velvet con glaseado de queso crema."
  },
  {
    "id": 4,
    "image": "assets/tortas/4.jpg",
    "nombre": "Torta de Zanahoria",
    "precio": 16.50,
    "estrellas": 4.9,
    "descripcion": "Torta húmeda de zanahoria con nueces y glaseado de queso crema."
  },
  {
    "id": 5,
    "image": "assets/tortas/5.jpg",
    "nombre": "Torta de Tres Leches",
    "precio": 14.00,
    "estrellas": 4.8,
    "descripcion": "Deliciosa torta esponjosa bañada en una mezcla de tres leches."
  },
  {
    "id": 6,
    "image": "assets/tortas/6.jpg",
    "nombre": "Torta Selva Negra",
    "precio": 18.50,
    "estrellas": 4.9,
    "descripcion": "Torta de chocolate con cerezas, crema batida y licor de cereza."
  },
  {
    "id": 7,
    "image": "assets/tortas/7.jpg",
    "nombre": "Torta de Fresas con Crema",
    "precio": 12.00,
    "estrellas": 4.7,
    "descripcion": "Torta fresca de fresa con capas de crema batida y trozos de fresa."
  },
  {
    "id": 8,
    "image": "assets/tortas/8.jpg",
    "nombre": "Torta de Limón",
    "precio": 13.75,
    "estrellas": 4.6,
    "descripcion": "Torta refrescante con crema de limón y ralladura de cítricos."
  },
  {
    "id": 9,
    "image": "assets/tortas/9.jpg",
    "nombre": "Torta Marmoleada",
    "precio": 16.20,
    "estrellas": 4.8,
    "descripcion": "Torta marmoleada con capas de vainilla y chocolate entrelazadas."
  },
  {
    "id": 10,
    "image": "assets/tortas/10.jpg",
    "nombre": "Torta de Manzana",
    "precio": 14.50,
    "estrellas": 4.7,
    "descripcion": "Torta suave con trozos de manzana y un toque de canela."
  },
  {
    "id": 11,
    "image": "assets/tortas/11.jpg",
    "nombre": "Torta de Frutos Rojos",
    "precio": 18.00,
    "estrellas": 4.9,
    "descripcion": "Torta con una mezcla de frambuesas, fresas y arándanos, decorada con crema batida."
  },
  {
    "id": 12,
    "image": "assets/tortas/12.jpg",
    "nombre": "Torta de Dulce de Leche",
    "precio": 19.00,
    "estrellas": 4.9,
    "descripcion": "Torta esponjosa cubierta con dulce de leche y nueces caramelizadas."
  },
  {
    "id": 13,
    "image": "assets/tortas/13.jpg",
    "nombre": "Torta de Mousse de Chocolate",
    "precio": 20.00,
    "estrellas": 4.8,
    "descripcion": "Torta rica en mousse de chocolate con una base crujiente de galleta."
  },
  {
    "id": 14,
    "image": "assets/tortas/14.jpg",
    "nombre": "Torta de Coco",
    "precio": 15.00,
    "estrellas": 4.7,
    "descripcion": "Torta con relleno de coco rallado y crema pastelera de coco."
  },
  {
    "id": 15,
    "image": "assets/tortas/15.jpg",
    "nombre": "Torta de Banoffee",
    "precio": 17.50,
    "estrellas": 4.9,
    "descripcion": "Torta con una combinación de plátano, crema y caramelo."
  },
  {
    "id": 16,
    "image": "assets/tortas/16.jpg",
    "nombre": "Torta de Almendras",
    "precio": 18.00,
    "estrellas": 4.7,
    "descripcion": "Torta suave con harina de almendras, decorada con láminas de almendra."
  },
  {
    "id": 17,
    "image": "assets/tortas/17.jpg",
    "nombre": "Torta de Naranja",
    "precio": 12.50,
    "estrellas": 4.6,
    "descripcion": "Torta cítrica con glaseado de naranja y almendras caramelizadas."
  },
  {
    "id": 18,
    "image": "assets/tortas/18.jpg",
    "nombre": "Torta de Avellana y Nutella",
    "precio": 22.00,
    "estrellas": 5.0,
    "descripcion": "Torta con crema de avellanas y Nutella, decorada con trozos de avellana."
  },
  {
    "id": 19,
    "image": "assets/tortas/19.jpg",
    "nombre": "Torta de Oreo",
    "precio": 21.00,
    "estrellas": 4.9,
    "descripcion": "Torta con capas de galleta Oreo triturada y crema de vainilla."
  },
  {
    "id": 20,
    "image": "assets/tortas/20.jpg",
    "nombre": "Torta de Queso con Frutas",
    "precio": 16.00,
    "estrellas": 4.8,
    "descripcion": "Torta de queso con una capa de frutas mixtas y base de galleta."
  },
  {
    "id": 21,
    "image": "assets/tortas/21.jpg",
    "nombre": "Torta de Tiramisú",
    "precio": 19.50,
    "estrellas": 4.8,
    "descripcion": "Clásica torta italiana con capas de café, crema de mascarpone y cacao."
  },
  {
    "id": 22,
    "image": "assets/tortas/22.jpg",
    "nombre": "Torta de Pistacho",
    "precio": 23.00,
    "estrellas": 4.9,
    "descripcion": "Torta cremosa de pistacho con relleno de crema y decorada con pistachos triturados."
  },
  {
    "id": 23,
    "image": "assets/tortas/23.jpg",
    "nombre": "Torta de Frutas Tropicales",
    "precio": 18.75,
    "estrellas": 4.7,
    "descripcion": "Torta fresca con una mezcla de piña, mango y maracuyá, con un toque de crema batida."
  }
]
''';

// Convierte la cadena JSON de tortas en una lista de objetos de Dart.
List<dynamic> parseTortas() {
  return json.decode(jsonDataTortas);
}