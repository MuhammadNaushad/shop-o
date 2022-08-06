import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';

class SocialButtons extends StatelessWidget {
  final String image;
  const SocialButtons({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        image,
        height: 50,
        width: 50,
      ),
      decoration: BoxDecoration(
          color: AppConstants.whiteText,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 20,
              spreadRadius: -7,
              color: AppConstants.defaultText.withOpacity(.6),
            )
            //color: Colors.rgba(0, 0, 0, 0.13),
          ]),
    );
  }
}
