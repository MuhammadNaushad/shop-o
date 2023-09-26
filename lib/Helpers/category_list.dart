import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';
// import '../model/product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildCategoryList() {
  //SearchFoodBloc searchBloc;
  return Column(
    children: [
      SizedBox(
        height: 150,
        //width: 200,
        //width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            //shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    CircleAvatar(
                      backgroundColor: AppConstants.categoriesbgColor,
                      radius: 40,
                      // child: FaIcon(
                      //   FontAwesomeIcons.addressCard,
                      //   size: 30,
                      // ),
                      child: Image.asset("assets/images/gaming.png"),
                    ),
                    const SizedBox(height: 10),
                    const Text('Gaming'),
                  ],
                ),
              );
            }),
      ),
    ],
  );
}
