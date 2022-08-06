import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  final String text;
  final double size;
  final Color textColor;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;
  const BigText(
      {Key? key,
      required this.text,
      this.size = 30,
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
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
