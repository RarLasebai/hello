import 'package:get/get.dart';
import 'package:hello/app/data/provider/product_provider.dart';
import 'package:hello/app/data/repository/product_repository.dart';
import 'package:dio/dio.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<ProductRepository>(
      () => ProductRepository(),
    );
    Get.lazyPut<ProductProvider>(
      () => ProductProvider(),
    );

    Get.lazyPut(() => Dio());
  }
}
