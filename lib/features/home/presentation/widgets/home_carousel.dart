import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        3,
        (index) => ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/carousel_img_${index + 1}.webp',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
      options: CarouselOptions(
        height: 180,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1.0,
      ),
    );
  }
}
