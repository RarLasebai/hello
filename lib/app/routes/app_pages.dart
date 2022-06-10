import 'package:get/get.dart';

import 'package:hello/app/modules/home/bindings/home_binding.dart';
import 'package:hello/app/modules/home/views/home_view.dart';
import 'package:hello/app/modules/shop/bindings/shop_binding.dart';
import 'package:hello/app/modules/shop/views/shop_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
  ];
}
