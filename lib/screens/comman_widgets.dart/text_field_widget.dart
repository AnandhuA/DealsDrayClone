import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String lable;
  final EdgeInsetsGeometry? margin;
  final int? maxLength;
  const TextFieldWidget({super.key, required this.lable, this.margin,this.maxLength});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: maxLength,
        decoration: InputDecoration(
          label: Text(lable),
        ),
      ),
    );
  }
}
