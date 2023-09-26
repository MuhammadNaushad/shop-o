import 'package:flutter/material.dart';

class AnotherTextSize extends StatelessWidget {
  final String text;
  final double size;
  final Color textColor;
  final FontWeight fontWeight;

  const AnotherTextSize(
      {Key? key,
      required this.text,
      this.size = 18,
      required this.textColor,
      this.fontWeight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
