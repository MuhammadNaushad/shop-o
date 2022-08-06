import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_o/repository/popular_categories.dart';
import '../../model/product_model.dart';

part 'category_event.dart';
part 'category_state.dart';

class PopularCategoriesBloc
    extends Bloc<PopularCategoriesEvent, PopularCategoriesState> {
  PopularCategoriesRepo catrepository;
  PopularCategoriesBloc({required this.catrepository})
      : super(ProductInitial()) {
    on<FetchPopularCategoriesEvent>(_onfetchPopularCategories);
    add(FetchPopularCategoriesEvent());
  }

  Future<void> _onfetchPopularCategories(FetchPopularCategoriesEvent event,
      Emitter<PopularCategoriesState> emit) async {
    try {
      emit(PopularCategoriesLoadingState());
      List<Category> popularCategories =
          await catrepository.getPopularCategories();

      emit(PopularCategoriesLoadedState(popularCategories: popularCategories));
    } catch (e) {
      emit(PopularCategoriesFailedState(message: e.toString()));
    }
  }
}
