
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hello/app/data/provider/product_provider.dart';
import 'package:hello/app/data/repository/product_repository.dart';
import 'package:hello/utility/token_injector.dart';

class DependencyInjection {
  static void init() {
    Get.put<GetStorage>(GetStorage());
    Get.put<Dio>(Dio(BaseOptions(
            baseUrl:
                'https://makeup-api.herokuapp.com/api/v1/')))
        .interceptors
        .addAll([TokenInjector()]);
    Get.put<ProductProvider>(ProductProvider());
    Get.put<ProductRepository>(ProductRepository());
  }
}
