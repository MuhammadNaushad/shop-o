import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;

  const DefaultButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: AppConstants.primaryColor,
          ),

          //style: ButtonStyle(backgroundColor: AppConstants.defaultText),
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: AppConstants.defaultText,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
