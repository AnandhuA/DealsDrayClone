import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final EdgeInsetsGeometry? margin;
  const TextWidget({
    super.key,
    required this.title,
    this.fontSize,
    this.fontWeight,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: double.infinity,
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}
