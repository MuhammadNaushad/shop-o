import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/product_model.dart';
import '../../repository/sliders_repo.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  SliderRepository sliderRepository;
  ProductBloc({required this.sliderRepository}) : super(ProductInitial()) {
    on<FetchFoodEvent>(_onfetchBanner);
    add(FetchFoodEvent());
  }

  Future<void> _onfetchBanner(
      FetchFoodEvent event, Emitter<ProductState> emit) async {
    // try {
    emit(BannerLoadingState());

    List<Sliders> sliders = await sliderRepository.getBanners();

    emit(BannerLoadedState(sliders: sliders));
    // } catch (e) {
    //   emit(BannerFailedState(message: e.toString()));
    // }
  }
}
