import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_o/Blocs/category/category_bloc.dart';
import 'package:shop_o/Blocs/newArrival/new_arrial_bloc.dart';
import 'package:shop_o/Helpers/bottom_navigator.dart';
import 'package:shop_o/repository/sliders_repo.dart';
import 'package:shop_o/repository/new_arrival.dart';
import 'package:shop_o/repository/popular_categories.dart';
import 'package:shop_o/repository/popular_product_repo.dart';
import 'package:shop_o/repository/seller_repository.dart';

import 'Blocs/popular product/popular_product_bloc.dart';
import 'Blocs/seller/seller_bloc.dart';
import 'Blocs/sliders bloc/product_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(sliderRepository: SliderRepositoryIml()),
          ),
          BlocProvider<SellerBloc>(
            create: (context) =>
                SellerBloc(sellerrepository: SellerRepositoryIml()),
          ),
          BlocProvider<PopularCategoriesBloc>(
            create: (context) => PopularCategoriesBloc(
                catrepository: PopularCategoriesRepoIml()),
          ),
          BlocProvider<PopularProductBloc>(
            create: (context) =>
                PopularProductBloc(popularProductRepo: PopularProductRepoIml()),
          ),
          BlocProvider<NewArrialBloc>(
            create: (context) =>
                NewArrialBloc(newArrivalRepository: NewArrivalRepositoryIml()),
          ),
        ],
        child: MaterialApp(
          title: 'Shop o',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const BottomNavigator(),
        ));
  }
}
