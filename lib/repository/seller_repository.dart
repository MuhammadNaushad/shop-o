import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/product_model.dart';

abstract class SellerRepository {
  Future<List<Seller>> getSellers();
}

const String baseUrl = 'https://api.websolutionus.com/bigshop/api';

class SellerRepositoryIml extends SellerRepository {
  @override
  Future<List<Seller>> getSellers() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      List<Seller>? sellers = ProductModel.fromJson(data).sellers;
      return sellers!;
    } else {
      throw Exception('Failed');
    }
  }
}
