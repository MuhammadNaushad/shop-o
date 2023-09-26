import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';

// import '../model/product_model.dart';

Widget buildSellerList() {
  return Column(
    children: [
      SizedBox(
        height: 160,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: AppConstants.whiteText,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        // child: Image.network(
                        //     'https://api.websolutionus.com/bigshop/${sellers[index].logo!}'),
                        child: Image.asset("assets/images/cart.png"),
                      ),

                      // Flexible(
                      //   child: CircleAvatar(
                      //     child: Image.network( // url ki thik ache - looks fine
                      //         'https://api.websolutionus.com/bigshop/${sellers[index].bannerImage!}'),
                      //     //child: Text('data'),
                      //     //child: Image.network(
                      //     //'https://api.websolutionus.com/bigshop/${sellers[index].bannerImage!}'),),
                      //   ),
                      // ),
                      const SizedBox(height: 20),
                      const Text("Shopno BD"),
                    ],
                  ),
                ),
              );
            }),
      ),
    ],
  );
}
