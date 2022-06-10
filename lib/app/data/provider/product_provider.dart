import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:hello/app/data/model/product.dart';

class ProductProvider {
  final _dio = Get.find<Dio>();
  List<Product>? products;
  Future<List<Product>> getProducts() async {
    try {
      final response = await Dio().get(
          'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
     products = List.from(response.data)
          .map((product) => Product.fromJson(product))
          .toList();
      return products!;
    } catch (e) {
      printError();
      throw e;
    }
  }
}
