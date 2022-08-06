import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/product_model.dart';

abstract class PopularCategoriesRepo {
  Future<List<Category>> getPopularCategories();
}

const String baseUrl = 'https://api.websolutionus.com/bigshop/api';

class PopularCategoriesRepoIml extends PopularCategoriesRepo {
  @override
  Future<List<Category>> getPopularCategories() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data2 = json.decode(response.body);

      List<Category> popularCategories = ProductModel.fromJson(data2)
          .popularCategories!
          .cast<Category>()
          .toList();
      return popularCategories;
    } else {
      throw Exception('Failed');
    }
  }
}
