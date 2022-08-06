import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/product_model.dart';


abstract class SliderRepository {
  Future<List<Sliders>> getBanners();
}

const String baseUrl = 'https://api.websolutionus.com/bigshop/api';

class SliderRepositoryIml extends SliderRepository {
  @override
  Future<List<Sliders>> getBanners() async {
    final response = await http.get(Uri.parse(baseUrl));
    
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      
      List<Sliders>? sliders = ProductModel.fromJson(data).sliders;
      return sliders!;
    } else {
      throw Exception('Failed');
    }
  }
}
