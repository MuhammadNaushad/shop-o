import 'package:flutter/cupertino.dart';

class SmalllText extends StatelessWidget {
  final String text;
  double size;
  final Color textColor;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;
  SmalllText(
      {Key? key,
      required this.text,
      this.size = 14,
      required this.textColor,
      required this.textDecoration,
      this.fontWeight = FontWeight.w400})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        decoration: textDecoration,
        color: textColor,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
