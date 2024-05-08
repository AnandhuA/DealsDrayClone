


import 'package:deals_dray_clone/colors/colors.dart';
import 'package:flutter/material.dart';

class FloatingButtonWidget extends StatelessWidget {
  const FloatingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: redColor,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.message_outlined,
          color: whiteColor,
        ),
        label: const Text(
          "Chat",
          style: TextStyle(color: whiteColor),
        ),
      ),
    );
  }
}
