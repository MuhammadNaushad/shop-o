part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class BannerLoadingState extends ProductState {}

// ignore: must_be_immutable
class BannerLoadedState extends ProductState {
  List<Sliders> sliders;
  BannerLoadedState({required this.sliders});
}

// ignore: must_be_immutable
class BannerFailedState extends ProductState {
  String message;
  BannerFailedState({required this.message});
}

