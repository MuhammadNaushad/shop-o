import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';

abstract class NewArrivalRepository {
  Future<List<Product>> getArrival();
}

const String baseUrl = 'https://api.websolutionus.com/bigshop/api';

class NewArrivalRepositoryIml extends NewArrivalRepository {
  @override
  Future<List<Product>> getArrival() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      List<Product>? newArrivalProducts =
          ProductModel.fromJson(data).newArrivalProducts;
      return newArrivalProducts!;
    } else {
      throw Exception('Failed');
    }
  }
}
