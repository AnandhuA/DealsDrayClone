


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
          backgroundColor: Colors.red,
        ),
        onPressed: () {},
        icon: const Icon(
          Icons.message_outlined,
          color: Colors.white,
        ),
        label: const Text(
          "Chat",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
