import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello/utility/dep_injection.dart';

import 'app/routes/app_pages.dart';

void main() {
  DependencyInjection.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    ),
  );
}
