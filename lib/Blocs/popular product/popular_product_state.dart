part of 'popular_product_bloc.dart';

abstract class PopularProductState extends Equatable {
  const PopularProductState();

  @override
  List<Object> get props => [];
}

class PopularProductInitial extends PopularProductState {}

class PopularProductLoadingState extends PopularProductState {}

// ignore: must_be_immutable
class PopularProductLoadedState extends PopularProductState {
  List<Product> popularCategoryProducts;
  PopularProductLoadedState({required this.popularCategoryProducts});
}

// ignore: must_be_immutable
class PopularProductFailedState extends PopularProductState {
  String message;
  PopularProductFailedState({required this.message});
}
