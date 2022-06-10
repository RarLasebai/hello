import 'package:get/get.dart';
import 'package:hello/app/data/model/product.dart';
import 'package:hello/app/data/repository/product_repository.dart';

class HomeController extends GetxController {
  final _repo = Get.find<ProductRepository>();
  bool isLoading = true;
  late List<Product> product;

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
      product = await _repo.getProducts();
      isLoading = false;
      update();
      return product;
    } catch (e) {
      throw e;
    }
  }
}
