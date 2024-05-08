import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  const CircleWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 40,
          child: Icon(
            icon,
            color: whiteColor,
            size: 30,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
