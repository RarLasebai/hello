import 'package:get/get.dart';
import 'package:hello/app/data/model/product.dart';
import 'package:hello/app/data/repository/product_repository.dart';

class HomeController extends GetxController {
  final _repo = Get.find<ProductRepository>();
  bool isLoading = true;
  final products = <Product>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<List<Product>> getProducts() async {
    try {
      final response = await _repo.getProducts();
      products.assignAll(response);
      isLoading = false;
      update();
      return products;
    } catch (e) {
      throw e;
    }
  }
}
