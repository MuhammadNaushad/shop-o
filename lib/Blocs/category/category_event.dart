part of 'category_bloc.dart';

abstract class PopularCategoriesEvent extends Equatable {
  const PopularCategoriesEvent();

  @override
  List<Object> get props => [];
}

class FetchPopularCategoriesEvent extends PopularCategoriesEvent {}
