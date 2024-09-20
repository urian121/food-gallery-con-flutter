// Creando una lista de hamburguesas
const String jsonData = '''
  [
    {
      "id": 1,
      "image": "assets/hamburguesas/1.jpg",
      "nombre": "Hamburguesa Clásica",
      "precio": 8.99,
      "estrellas": 4.5,
      "descripcion": "Una jugosa hamburguesa con queso, lechuga, tomate y una salsa especial."
    },
    {
      "id": 2,
      "image": "assets/hamburguesas/2.jpg",
      "nombre": "Pizza Margherita",
      "precio": 12.50,
      "estrellas": 4.7,
      "descripcion": "Pizza con salsa de tomate, mozzarella fresca y hojas de albahaca."
    },
    {
      "id": 3,
      "image": "assets/hamburguesas/3.jpg",
      "nombre": "Tacos al Pastor",
      "precio": 7.99,
      "estrellas": 4.8,
      "descripcion": "Tacos tradicionales mexicanos con carne al pastor, piña y cilantro."
    },
    {
      "id": 4,
      "image": "assets/hamburguesas/4.jpg",
      "nombre": "Sushi Variado",
      "precio": 15.99,
      "estrellas": 4.6,
      "descripcion": "Un surtido de sushi fresco con salmón, atún y camarón."
    },
    {
      "id": 5,
      "image": "assets/hamburguesas/17.jpg",
      "nombre": "Pizza Pepperoni",
      "precio": 11.99,
      "estrellas": 4.6,
      "descripcion": "Pizza clásica con pepperoni crujiente y queso derretido."
    },
    {
      "id": 6,
      "image": "assets/hamburguesas/5.jpg",
      "nombre": "Ensalada César",
      "precio": 6.99,
      "estrellas": 4.2,
      "descripcion": "Ensalada con lechuga romana, crutones, queso parmesano y aderezo César."
    },
    {
      "id": 7,
      "image": "assets/hamburguesas/6.jpg",
      "nombre": "Pasta Carbonara",
      "precio": 11.50,
      "estrellas": 4.4,
      "descripcion": "Pasta con una salsa cremosa de huevo, queso y panceta."
    },
    {
      "id": 8,
      "image": "assets/hamburguesas/18.jpg",
      "nombre": "Pizza Hawaiana",
      "precio": 13.50,
      "estrellas": 4.4,
      "descripcion": "Pizza con piña, jamón y queso fundido."
    },
    {
      "id": 9,
      "image": "assets/hamburguesas/7.jpg",
      "nombre": "Pollo Frito",
      "precio": 9.99,
      "estrellas": 4.3,
      "descripcion": "Pollo crujiente y jugoso acompañado de papas fritas."
    },
    {
      "id": 10,
      "image": "assets/hamburguesas/8.jpg",
      "nombre": "Burrito de Carne",
      "precio": 8.50,
      "estrellas": 4.1,
      "descripcion": "Burrito relleno de carne de res, frijoles, arroz y salsa."
    },
    {
      "id": 11,
      "image": "assets/hamburguesas/9.jpg",
      "nombre": "Sopa de Tomate",
      "precio": 5.99,
      "estrellas": 4.0,
      "descripcion": "Sopa cremosa de tomate, ideal para acompañar con pan crujiente."
    },
    {
      "id": 12,
      "image": "assets/hamburguesas/19.jpg",
      "nombre": "Pizza Cuatro Quesos",
      "precio": 14.00,
      "estrellas": 4.8,
      "descripcion": "Pizza con una deliciosa mezcla de mozzarella, gorgonzola, parmesano y ricotta."
    },
    {
      "id": 13,
      "image": "assets/hamburguesas/20.jpg",
      "nombre": "Pizza Vegetariana",
      "precio": 12.00,
      "estrellas": 4.2,
      "descripcion": "Pizza con champiñones, pimientos, cebolla y aceitunas."
    },
    {
      "id": 14,
      "image": "assets/hamburguesas/10.jpg",
      "nombre": "Helado Sundae",
      "precio": 4.99,
      "estrellas": 4.9,
      "descripcion": "Helado con topping de chocolate, nueces y crema batida."
    },
    {
      "id": 15,
      "image": "assets/hamburguesas/11.jpg",
      "nombre": "Nachos con Queso",
      "precio": 7.50,
      "estrellas": 4.2,
      "descripcion": "Nachos crujientes cubiertos con queso derretido y jalapeños."
    },
    {
      "id": 16,
      "image": "assets/hamburguesas/12.jpg",
      "nombre": "Alitas de Pollo BBQ",
      "precio": 10.99,
      "estrellas": 4.6,
      "descripcion": "Alitas bañadas en salsa BBQ, perfectas para compartir."
    },
    {
      "id": 17,
      "image": "assets/hamburguesas/13.jpg",
      "nombre": "Wrap de Pollo",
      "precio": 6.99,
      "estrellas": 4.3,
      "descripcion": "Wrap relleno de pollo a la parrilla, lechuga y aderezo ranch."
    },
    {
      "id": 18,
      "image": "assets/hamburguesas/14.jpg",
      "nombre": "Fajitas de Res",
      "precio": 13.99,
      "estrellas": 4.7,
      "descripcion": "Fajitas de res con pimientos y cebolla, servidas con tortillas."
    },
    {
      "id": 19,
      "image": "assets/hamburguesas/21.jpg",
      "nombre": "Pizza BBQ Pollo",
      "precio": 15.00,
      "estrellas": 4.7,
      "descripcion": "Pizza con pollo a la parrilla, salsa BBQ y queso cheddar."
    },
    {
      "id": 20,
      "image": "assets/hamburguesas/22.jpg",
      "nombre": "Pizza Mexicana",
      "precio": 14.50,
      "estrellas": 4.5,
      "descripcion": "Pizza con chorizo, jalapeños, frijoles refritos y queso."
    },
    {
      "id": 21,
      "image": "assets/hamburguesas/15.jpg",
      "nombre": "Smoothie de Frutas",
      "precio": 4.50,
      "estrellas": 4.4,
      "descripcion": "Batido fresco de frutas mixtas con base de yogur."
    },
    {
      "id": 22,
      "image": "assets/hamburguesas/16.jpg",
      "nombre": "Donas Glaseadas",
      "precio": 3.99,
      "estrellas": 4.8,
      "descripcion": "Donas esponjosas cubiertas con un glaseado dulce."
    }
  ]
  ''';
