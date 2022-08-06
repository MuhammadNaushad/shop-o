import 'package:flutter/cupertino.dart';

class MediumText extends StatelessWidget {
  final String text;
  double size;
  final Color textColor;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;
  MediumText(
      {Key? key,
      required this.text,
      this.size = 16,
      required this.textColor,
      required this.textDecoration,
      required this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        decoration: textDecoration,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
