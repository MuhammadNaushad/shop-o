import 'package:flutter/material.dart';

import '../app_constants.dart';

class Headlines extends StatelessWidget {
  final String title;
  const Headlines({Key? key, 
  required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppConstants.defaultText),
        ),
       const Text(
          'See all',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: AppConstants.secondaryColor),
        ),
      ],
    );
  }
}
