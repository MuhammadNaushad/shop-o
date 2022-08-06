import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';

class DefaultSearchField extends StatelessWidget {
  final String labelText;
  final IconButton? suffixIcon;
  final IconButton? preffixIcon;
  final Color fillColor;
  //final String suffixIcon;
  final TextInputType textInputType;
  final bool obscureText;
  final VoidCallback? callback;
  const DefaultSearchField({
    Key? key,
    required this.labelText,
    //this.suffixIcon =  Icon('assets/'),
    required this.textInputType,
    required this.obscureText,
    this.callback,
    this.suffixIcon,
    this.preffixIcon,
    required this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: TextField(
        keyboardType: textInputType,
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            //contentPadding:
            //const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),

            contentPadding: const EdgeInsets.all(20.0),
            border: InputBorder.none,
            suffixIcon: suffixIcon ?? null,
            prefixIcon: preffixIcon ?? null,

            //suffixIcon: ,
            hintText: labelText,
            labelStyle: const TextStyle(
              color: AppConstants.secondaryColor,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            )),
      ),
    );
  }
}
