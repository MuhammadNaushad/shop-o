import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shop_o/model/product_model.dart';
import 'package:shop_o/repository/new_arrival.dart';

part 'new_arrial_event.dart';
part 'new_arrial_state.dart';

class NewArrialBloc extends Bloc<NewArrialEvent, NewArrialState> {
  
  NewArrivalRepository newArrivalRepository;
  
  NewArrialBloc({required this.newArrivalRepository}) : super(NewArrialInitial()) {
    on<NewArrialEvent>(_onfetchArrival);
    add(FetchNewArrivalEvent());
  }

  Future<void> _onfetchArrival(
      FetchNewArrivalEventvent, Emitter<NewArrialState> emit) async {
    try {
      emit(NewArrivalLoadingState());
      List<Product> newArrivalProducts =
          await newArrivalRepository.getArrival();

      emit(NewArrivalLoadedState(newArrivalProducts: newArrivalProducts));
    } catch (e) {
      emit(NewArrivalFailedState(message: e.toString()));
    }
  }
}
