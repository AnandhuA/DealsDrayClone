import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  const TextWidget({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeight ,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}
