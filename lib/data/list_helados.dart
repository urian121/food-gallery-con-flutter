// Importa la librería para trabajar con JSON (codificación y decodificación de datos).
import 'dart:convert';

const String jsonDataHelados = '''
[
  {
    "id": 1,
    "image": "assets/helados/1.jpg",
    "nombre": "Helado de Vainilla",
    "precio": 4.50,
    "estrellas": 4.8,
    "descripcion": "Un clásico helado cremoso de vainilla con toques de caramelo."
  },
  {
    "id": 2,
    "image": "assets/helados/2.jpg",
    "nombre": "Helado de Chocolate",
    "precio": 5.00,
    "estrellas": 4.9,
    "descripcion": "Helado intenso de chocolate oscuro con trozos de cacao."
  },
  {
    "id": 3,
    "image": "assets/helados/3.jpg",
    "nombre": "Helado de Fresa",
    "precio": 4.30,
    "estrellas": 4.7,
    "descripcion": "Helado suave y dulce hecho con fresas naturales."
  },
  {
    "id": 4,
    "image": "assets/helados/4.jpg",
    "nombre": "Helado de Menta con Chispas de Chocolate",
    "precio": 5.20,
    "estrellas": 4.6,
    "descripcion": "Refrescante menta con deliciosas chispas de chocolate."
  },
  {
    "id": 5,
    "image": "assets/helados/5.jpg",
    "nombre": "Helado de Caramelo Salado",
    "precio": 5.50,
    "estrellas": 4.9,
    "descripcion": "Una mezcla perfecta de dulce caramelo y un toque salado."
  },
  {
    "id": 6,
    "image": "assets/helados/6.jpg",
    "nombre": "Helado de Mango",
    "precio": 4.80,
    "estrellas": 4.5,
    "descripcion": "Helado tropical hecho con jugo de mango fresco."
  },
  {
    "id": 7,
    "image": "assets/helados/7.jpg",
    "nombre": "Helado de Coco",
    "precio": 4.90,
    "estrellas": 4.8,
    "descripcion": "Helado cremoso con auténticos trozos de coco."
  },
  {
    "id": 8,
    "image": "assets/helados/8.jpg",
    "nombre": "Helado de Pistacho",
    "precio": 6.00,
    "estrellas": 4.7,
    "descripcion": "Helado fino con sabor a pistacho y trozos crujientes."
  },
  {
    "id": 9,
    "image": "assets/helados/9.jpg",
    "nombre": "Helado de Café",
    "precio": 5.10,
    "estrellas": 4.6,
    "descripcion": "Helado con un fuerte sabor a café espresso."
  },
  {
    "id": 10,
    "image": "assets/helados/10.jpg",
    "nombre": "Helado de Turrón",
    "precio": 6.20,
    "estrellas": 4.9,
    "descripcion": "Helado gourmet con trozos de turrón artesanal."
  }
]
''';


// Convierte la cadena JSON de Helados en una lista de objetos de Dart.
List<dynamic> parseHelados() {
  return json.decode(jsonDataHelados);
}