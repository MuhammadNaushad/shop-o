import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../model/product_model.dart';
import '../../../repository/popular_product_repo.dart';

part 'popular_product_event.dart';
part 'popular_product_state.dart';

class PopularProductBloc
    extends Bloc<PopularProductEvent, PopularProductState> {
  PopularProductRepo popularProductRepo;

  PopularProductBloc({required this.popularProductRepo})
      : super(PopularProductInitial()) {
    on<FetchPopularProductEvent>(_onfetchBanner);

    add(FetchPopularProductEvent());
  }

  Future<void> _onfetchBanner(
      FetchPopularProductEvent event, Emitter<PopularProductState> emit) async {
    // try {
    emit(PopularProductLoadingState());

    List<Product> popularCategoryProducts =
        await popularProductRepo.getPopularProducts();

    emit(PopularProductLoadedState(
        popularCategoryProducts: popularCategoryProducts));
    // } catch (e) {
    //   emit(BannerFailedState(message: e.toString()));
    // }
  }
}
