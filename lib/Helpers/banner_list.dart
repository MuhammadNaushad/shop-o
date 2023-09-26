import 'package:flutter/material.dart';
import '../app_constants.dart';
// import 'package:shop_o/model/product_model.dart';

Widget buildHintsList() {
  return Column(
    children: [
      SizedBox(
        height: 226,
        width: 450,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
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
                          height: 200,
                          width: double.infinity,
                          color: AppConstants.bannerColor,
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 0,
                                  child: Image.asset(
                                    "assets/images/slider.png",
                                    height: 150,
                                  )
                                  //     Image.network(
                                  //   'https://api.websolutionus.com/bigshop/${sliders[index].image!}',
                                  // )
                                  ),
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
                              const Positioned(
                                top: 50,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    'Apple Wireless',
                                  ),
                                ),
                              ),
                              const Positioned(
                                top: 100,
                                child: Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    "Samsungs10+",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                bottom: 20,
                                child: Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Row(
                                    children: [
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
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 150,
                                right: 20,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: AppConstants.primaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 170,
                                right: 20,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppConstants.primaryColor),
                                        //color: AppConstants.primaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 190,
                                right: 20,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: AppConstants.primaryColor),
                                        //color: AppConstants.primaryColor,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
