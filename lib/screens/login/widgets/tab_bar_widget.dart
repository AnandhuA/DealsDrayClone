import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Function ontap;
  final Color selectedTextColor;
  const TabBarWidget(
      {super.key,
      required this.color,
      required this.selectedTextColor,
      required this.title,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => ontap(),
      child: Container(
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
      ),
    );
  }
}
