import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shop_o/Blocs/category/category_bloc.dart';
// import 'package:shop_o/Blocs/popular%20product/popular_product_bloc.dart';
// import 'package:shop_o/Blocs/seller/seller_bloc.dart';
import 'package:shop_o/Helpers/build_popular_product_list.dart';
import 'package:shop_o/Helpers/build_seller_list.dart';
import 'package:shop_o/Helpers/category_list.dart';
import 'package:shop_o/Helpers/default_search_box.dart';
import 'package:shop_o/Helpers/new_arrival_list.dart';

// import '../Blocs/newArrival/new_arrial_bloc.dart';
// import '../Blocs/sliders bloc/product_bloc.dart';
import '../Helpers/banner_list.dart';
import '../Helpers/headlines.dart';
import '../Helpers/medium_text.dart';
import '../app_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // late ProductBloc productBloc;
  // late NewArrialBloc newArrialBloc;
  // late SellerBloc sellerBloc;
  // late PopularCategoriesBloc popularCategoriesBloc;

  // @override
  // void initState() {
  //   sellerBloc = BlocProvider.of<SellerBloc>(context);
  //   popularCategoriesBloc = BlocProvider.of<PopularCategoriesBloc>(context);
  //   productBloc = BlocProvider.of<ProductBloc>(context);
  //   newArrialBloc = BlocProvider.of<NewArrialBloc>(context);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/gps.png',
                    width: 22,
                    height: 22,
                  ),
                  const SizedBox(width: 10),
                  const MediumText(
                      text: 'Select Location',
                      textColor: AppConstants.defaultText,
                      textDecoration: TextDecoration.none,
                      fontWeight: FontWeight.w700),
                  const Icon(Icons.keyboard_arrow_down),
                  const Spacer(),
                  Stack(
                    children: [
                      const Icon(
                        Icons.notifications_none_outlined,
                        //color: AppConstants.whiteText,
                        size: 32,
                      ),
                      Positioned(
                        left: 14,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: AppConstants.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                              color: AppConstants.defaultText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Stack(
                    children: [
                      Image.asset(
                        'assets/images/cart.png',
                        height: 30,
                        width: 30,
                      ),
                      Positioned(
                        left: 14,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: AppConstants.primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 14,
                            minHeight: 14,
                          ),
                          child: const Text(
                            '3',
                            style: TextStyle(
                              color: AppConstants.defaultText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 52,
                    width: 250,
                    child: DefaultSearchField(
                        fillColor: AppConstants.abColor,
                        preffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        labelText: 'Search products',
                        textInputType: TextInputType.name,
                        obscureText: false),
                  ),
                  const Spacer(),
                  Container(
                    height: 52,
                    width: 52,
                    color: AppConstants.primaryColor,
                    child: Image.asset('assets/images/filter.png'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            // BlocBuilder<ProductBloc, ProductState>(
            //   builder: (context, state) {
            //     if (state is BannerLoadingState) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (state is BannerLoadedState) {
            //       return buildHintsList(state.sliders);
            //     } else if (state is BannerFailedState) {
            //       return Center(
            //         child: Text(state.message.toString()),
            //       );
            //     }
            //     return Container();
            //   },
            // ),
            buildHintsList(),

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Headlines(title: 'Categories'),
            ),
            //
            // BlocBuilder<PopularCategoriesBloc, PopularCategoriesState>(
            //   builder: (context, state) {
            //     if (state is PopularCategoriesLoadingState) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (state is PopularCategoriesLoadedState) {
            //       return buildCategoryList(state.popularCategories);
            //     } else if (state is PopularCategoriesFailedState) {
            //       return Center(
            //         child: Text(state.message.toString()),
            //       );
            //     }
            //     return Container();
            //   },
            // ),
            //const SizedBox(height: 20),
            //const SizedBox(height: 20),
            buildCategoryList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Headlines(title: 'Popular'),
            ),
            const SizedBox(height: 20),
            // BlocBuilder<PopularProductBloc, PopularProductState>(
            //   builder: (context, state) {
            //     if (state is PopularProductLoadingState) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (state is PopularProductLoadedState) {
            //       return builPopularProductlList(state.popularCategoryProducts);
            //     } else if (state is PopularProductFailedState) {
            //       return Center(
            //         child: Text(state.message.toString()),
            //       );
            //     }
            //     return Container();
            //   },
            // ),
            builPopularProductlList(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Headlines(title: 'Best Seller'),
            ),
            const SizedBox(height: 20),
            // BlocBuilder<SellerBloc, SellerState>(
            //   builder: (context, state) {
            //     if (state is SellerLoadingState) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (state is SellerLoadedState) {
            //       return buildSellerList(state.sellers);
            //     } else if (state is SellerFailedState) {
            //       return Center(
            //         child: Text(state.message.toString()),
            //       );
            //     }
            //     return Container();
            //   },
            // ),
            buildSellerList(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrivals',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppConstants.defaultText),
                  ),
                  SizedBox(
                    height: 52,
                    width: 52,
                    child: Image.asset('assets/images/filter.png'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),

            // arrival bloc
            // BlocBuilder<NewArrialBloc, NewArrialState>(
            //   builder: (context, state) {
            //     if (state is NewArrivalLoadingState) {
            //       return const Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     } else if (state is NewArrivalLoadedState) {
            //       return builNewArrivalList(state.newArrivalProducts);
            //     } else if (state is NewArrivalFailedState) {
            //       return Center(
            //         child: Text(state.message.toString()),
            //       );
            //     }
            //     return Container();
            //   },
            // ),
            builNewArrivalList(),
            const SizedBox(height: 50),
          ],
        ),
      ),
    ));
  }
}
