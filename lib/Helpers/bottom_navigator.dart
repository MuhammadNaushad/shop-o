import 'package:flutter/material.dart';
import 'package:shop_o/app_constants.dart';
import 'package:shop_o/screens/home_screen.dart';
import 'package:shop_o/screens/signin_screen.dart';
import 'package:shop_o/screens/signup_screen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int pageIndex = 0;

  final pages = [
    const SignupScreen(),
    const SignInScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffC4DFCB),
      //backgroundColor:
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        color: AppConstants.whiteText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: AppConstants.primaryColor,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: AppConstants.defaultText,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.message_outlined,
                    color: AppConstants.primaryColor,
                    size: 35,
                  )
                : const Icon(
                    Icons.message_rounded,
                    color: AppConstants.defaultText,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.shopping_bag,
                    color: AppConstants.primaryColor,
                    size: 35,
                  )
                : const Icon(
                    Icons.shopping_bag_outlined,
                    color: AppConstants.defaultText,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: AppConstants.primaryColor,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: AppConstants.defaultText,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
