import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerImagesWidget extends StatelessWidget {
  const BannerImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.all(20),
        child: CarouselSlider(
          items: List.generate(
            colors.length,
            (index) => banner(color: colors[index]),
          ),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
          ),
        ));
  }

  Widget banner({required Color color}) {
    return Container(
      width: 350,
      height: 200,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

List<Color> colors = [
  Colors.red.shade100,
  Colors.blue.shade100,
  Colors.green.shade100,
  Colors.yellow.shade100,
  Colors.orange.shade100,
  Colors.purple.shade100,
  Colors.teal.shade100,
  Colors.pink.shade100,
  Colors.indigo.shade100,
  Colors.deepPurple.shade100,
  Colors.cyan.shade100,
  Colors.amber.shade100,
  Colors.lime.shade100,
];
