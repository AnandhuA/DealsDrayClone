import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String lable;
  final EdgeInsetsGeometry? margin;
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool obscureText;
  const TextFieldWidget({
    super.key,
    required this.lable,
    this.margin,
    this.maxLength,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        keyboardType: keyboardType,
        maxLength: maxLength,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(lable),
        ),
      ),
    );
  }
}
