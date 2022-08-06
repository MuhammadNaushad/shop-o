import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';
import '../model/product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget buildCategoryList(List<Category> popularCategories) {
  //SearchFoodBloc searchBloc;
  return Column(
    children: [
      SizedBox(
        height: 150,
        width: 500,
        //width: double.infinity,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: popularCategories.length,
            //shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: 20,
                    width: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        const CircleAvatar(
                          backgroundColor: AppConstants.categoriesbgColor,
                          radius: 40,
                          child: FaIcon(
                            FontAwesomeIcons.addressCard,
                            size: 30,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(popularCategories[index].category!.name!),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    ],
  );
}
