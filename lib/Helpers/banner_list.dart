import 'package:flutter/material.dart';
import '../app_constants.dart';
import 'package:shop_o/model/product_model.dart';

Widget buildHintsList(List<Sliders> sliders) {
  return Column(
    children: [
      SizedBox(
        height: 226,
        width: 450,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: sliders.length,
            //shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          //height: 500,
                          width: double.infinity,
                          color: AppConstants.bannerColor,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Image.network(
                                'https://api.websolutionus.com/bigshop/${sliders[index].image!}',
                              )),
                              Positioned(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                    horizontal: 10,
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 18,
                                    width: 58,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: AppConstants.whiteText,
                                    ),
                                    child: const Text(
                                      'Gaming',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xFF222222)),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    sliders[index].label!,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 100,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    sliders[index].title!,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  bottom: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      children: const [
                                        Text('Shop Now',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            )),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),

                      // Container(
                      //     child: Image.network(
                      //         'https://api.websolutionus.com/bigshop/${sliders[index].image!}')),
                      // Text(sliders[index].title!),
                    ],
                  ),
                ),
              );
            }),
      ),
    ],
  );
}
