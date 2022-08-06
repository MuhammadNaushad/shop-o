part of 'category_bloc.dart';

abstract class PopularCategoriesState extends Equatable {
  const PopularCategoriesState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends PopularCategoriesState {}

class PopularCategoriesLoadingState extends PopularCategoriesState {}

// ignore: must_be_immutable
class PopularCategoriesLoadedState extends PopularCategoriesState {
  List<Category> popularCategories;
  PopularCategoriesLoadedState({required this.popularCategories});
}

// ignore: must_be_immutable
class PopularCategoriesFailedState extends PopularCategoriesState {
  String message;
  PopularCategoriesFailedState({required this.message});
}
