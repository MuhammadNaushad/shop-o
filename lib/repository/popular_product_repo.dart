import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/product_model.dart';

abstract class PopularProductRepo {
  Future<List<Product>> getPopularProducts();
}

const String baseUrl = 'https://api.websolutionus.com/bigshop/api';

class PopularProductRepoIml extends PopularProductRepo {
  @override
  Future<List<Product>> getPopularProducts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data2 = json.decode(response.body);
      
      List<Product> popularCategoryProducts =  ProductModel.fromJson(data2).popularCategoryProducts!;
      return popularCategoryProducts;
    } else {
      throw Exception('Failed');
    }
  }
}
