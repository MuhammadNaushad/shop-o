part of 'popular_product_bloc.dart';

abstract class PopularProductEvent extends Equatable {
  const PopularProductEvent();

  @override
  List<Object> get props => [];
}
class FetchPopularProductEvent extends PopularProductEvent {}

