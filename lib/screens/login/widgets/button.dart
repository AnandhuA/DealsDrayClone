import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function ontap;
  const ButtonWidget({super.key, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () => ontap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "SEND CODE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
