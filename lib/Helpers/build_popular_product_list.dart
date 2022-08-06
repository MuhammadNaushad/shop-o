import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import '../app_constants.dart';
import 'package:shop_o/model/product_model.dart';

import '18fontsize.dart';
import 'medium_text.dart';
import 'small_text.dart';

Widget builPopularProductlList(List<Product> popularCategoryProducts) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Wrap(
        children: [
          SizedBox(
            height: 350,
            width: 450,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularCategoryProducts.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Container(
                                height: 400,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: AppConstants.whiteText,
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 15),
                                        blurRadius: 64,
                                        spreadRadius: -50,
                                        color: AppConstants.defaultText
                                            .withOpacity(0.4),
                                      ),
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          FavoriteButton(
                                            iconSize: 40,
                                            isFavorite: false,
                                            valueChanged: (_isFavorite) {
                                              print(
                                                  'Is Favorite : $_isFavorite');
                                            },
                                          ),
                                        ],

                                        /// apni aktu dekhe din
                                      ),
                                      const SizedBox(height: 10),
                                      Image.network(
                                        "https://api.websolutionus.com/bigshop/${popularCategoryProducts[index].thumbImage!}",
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
                                            text: popularCategoryProducts[index]
                                                .name!,
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
                                            text: popularCategoryProducts[index]
                                                    .offerPrice ??
                                                ''.toString(),
                                            textColor: AppConstants.redColor,
                                          ),
                                          SizedBox(width: 10),
                                          SmalllText(
                                            text: popularCategoryProducts[index]
                                                .price!
                                                .toString(),
                                            textColor:
                                                AppConstants.discountColor,
                                            textDecoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    ],
  );
}
