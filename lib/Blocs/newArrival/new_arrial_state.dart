part of 'new_arrial_bloc.dart';

abstract class NewArrialState extends Equatable {
  const NewArrialState();
  
  @override
  List<Object> get props => [];
}

class NewArrialInitial extends NewArrialState {}
class NewArrivalLoadingState extends NewArrialState {}

// ignore: must_be_immutable
class NewArrivalLoadedState extends NewArrialState {
  List<Product> newArrivalProducts;
  NewArrivalLoadedState({required this.newArrivalProducts});
}

// ignore: must_be_immutable
class NewArrivalFailedState extends NewArrialState {
  String message;
  NewArrivalFailedState({required this.message});
}