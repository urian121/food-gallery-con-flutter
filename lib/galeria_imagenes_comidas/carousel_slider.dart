import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Importa el widget CarouselSlider

class ImageCarousel extends StatelessWidget {
  ImageCarousel({super.key});

  final List<String> imgList = [
    'assets/carrusel/1.jpg',
    'assets/carrusel/2.jpg',
    'assets/carrusel/3.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      itemBuilder: (context, index, realIndex) {
        final imageUrl = imgList[index];
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Image.asset(imageUrl, fit: BoxFit.cover),
        );
      },
      options: CarouselOptions(
        height: 200.0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.easeInOut,
      ),
    );
  }
}
