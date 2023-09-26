import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import '../app_constants.dart';
// import 'package:shop_o/model/product_model.dart';

import 'another_text_size.dart';
import 'medium_text.dart';
import 'small_text.dart';

Widget builNewArrivalList() {
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
                crossAxisSpacing: 0,
                childAspectRatio: .74,
                mainAxisSpacing: 15,
              ),
              // scrollDirection: Axis.vertical,
              itemCount: 4,
              //shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 300,
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
                                    valueChanged: (isFavorite) {
                                      print('Is Favorite : $isFavorite');
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              // Image.network(
                              //   "https://api.websolutionus.com/bigshop/${newArrivalProducts[index].thumbImage!}",
                              //   fit: BoxFit.fill,
                              //   height: 150,
                              //   width: 150,
                              // ),
                              Image.asset("assets/images/arriaval_pro.png"),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
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
                              const Wrap(
                                children: [
                                  MediumText(
                                    /// text: newArrivalProducts[index].name!,
                                    text: "Samsung Galaxy 3 in 512GB",
                                    textColor: AppConstants.defaultText,
                                    textDecoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Row(
                                children: [
                                  AnotherTextSize(
                                    text: "\$${69}",

                                    /// newArrivalProducts[index].offerPrice ??
                                    // ''.toString(),
                                    textColor: AppConstants.redColor,
                                  ),
                                  SizedBox(width: 10),
                                  SmalllText(
                                    // text: newArrivalProducts[index]
                                    //     .price!
                                    //     .toString(),
                                    text: "\$${89}",
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
