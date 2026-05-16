import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product.dart';

class ApiService {
  static const String baseUrl = 'https://dummyjson.com';

  static Future<List<Product>> getProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products?limit=0'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final List products = data['products'];
      return products.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat produk');
    }
  }
}
