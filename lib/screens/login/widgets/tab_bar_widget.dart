import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Color selectedTextColor;
  const TabBarWidget({
    super.key,
    this.color = transperentColor,
    this.selectedTextColor = blackColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: selectedTextColor),
        ),
      ),
    );
  }
}
