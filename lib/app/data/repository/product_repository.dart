import 'package:get/get.dart';
import 'package:hello/app/data/model/product.dart';
import 'package:hello/app/data/provider/product_provider.dart';

class ProductRepository {
  final _productProvider = Get.find<ProductProvider>();

  Future<List<Product>> getProducts() async {
    try {
      final result = _productProvider.getProducts();
      return result;
    } catch (e) {
      throw e;
    }
  }
}
