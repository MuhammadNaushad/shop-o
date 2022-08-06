part of 'seller_bloc.dart';

abstract class SellerState extends Equatable {
  const SellerState();
  
  @override
  List<Object> get props => [];
}

class SellerInitial extends SellerState {}

class SellerLoadingState extends SellerState {}

// ignore: must_be_immutable
class SellerLoadedState extends SellerState {
  List<Seller> sellers;
  SellerLoadedState({required this.sellers});
}

// ignore: must_be_immutable
class SellerFailedState extends SellerState {
  String message;
  SellerFailedState({required this.message});
}

