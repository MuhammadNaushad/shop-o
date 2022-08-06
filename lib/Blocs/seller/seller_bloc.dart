import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_o/repository/seller_repository.dart';

import '../../model/product_model.dart';

part 'seller_event.dart';
part 'seller_state.dart';

class SellerBloc extends Bloc<SellerEvent, SellerState> {
  SellerRepository sellerrepository;
  SellerBloc({required this.sellerrepository}) : super(SellerInitial()) {
    on<FetchSellerEvent>(_onfetchSellers);
    add(FetchSellerEvent());
  }

  Future<void> _onfetchSellers(
      FetchSellerEvent event, Emitter<SellerState> emit) async {
    // try {
    emit(SellerLoadingState());

    List<Seller> sellers = await sellerrepository.getSellers();

    emit(SellerLoadedState(sellers: sellers));
    // } catch (e) {
    //   emit(BannerFailedState(message: e.toString()));
    // }
  }
}
