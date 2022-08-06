import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import '../app_constants.dart';
import 'package:shop_o/model/product_model.dart';

import '18fontsize.dart';
import 'medium_text.dart';
import 'small_text.dart';

Widget builNewArrivalList(List<Product> newArrivalProducts) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Wrap(
        children: [
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                childAspectRatio: 0.57,
                mainAxisSpacing: 15,
              ),
              // scrollDirection: Axis.vertical,
              itemCount: newArrivalProducts.length,
              //shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 600,
                      width: 200,
                      decoration: BoxDecoration(
                          color: AppConstants.whiteText,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 15),
                              blurRadius: 64,
                              spreadRadius: -50,
                              color: AppConstants.defaultText.withOpacity(0.4),
                            ),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FavoriteButton(
                                    iconSize: 40,
                                    isFavorite: false,
                                    valueChanged: (_isFavorite) {
                                      print('Is Favorite : $_isFavorite');
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Image.network(
                                "https://api.websolutionus.com/bigshop/${newArrivalProducts[index].thumbImage!}",
                                fit: BoxFit.fill,
                                height: 150,
                                width: 150,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star,
                                    color: AppConstants.primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppConstants.primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppConstants.primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppConstants.primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: AppConstants.primaryColor,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Wrap(
                                children: [
                                  MediumText(
                                    text: newArrivalProducts[index].name!,
                                    textColor: AppConstants.defaultText,
                                    textDecoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  AnotherTextSize(
                                    text:
                                        newArrivalProducts[index].offerPrice ??
                                            ''.toString(),
                                    textColor: AppConstants.redColor,
                                  ),
                                  const SizedBox(width: 10),
                                  SmalllText(
                                    text: newArrivalProducts[index]
                                        .price!
                                        .toString(),
                                    textColor: AppConstants.discountColor,
                                    textDecoration: TextDecoration.lineThrough,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ],
      ),
    ],
  );
}
