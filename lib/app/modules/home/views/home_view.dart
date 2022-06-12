import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello/app/modules/home/views/widget/product_tile.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // HomeController Controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shop'),
          centerTitle: true,
        ),
        body: GetBuilder<HomeController>(
          init: HomeController(),
          initState: (_) {},
          builder: (_) {
            return Column(
          children: [
            Expanded(
              child: GetBuilder<HomeController>(builder: (context) {
                _.getProducts();
                if (_.isLoading == true) {
                  return Center(
                    child: CircularProgressIndicator());
                } else {
                  return GridView.builder(
                     itemCount: _.products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                      ),
                      itemBuilder: (context, index) {
                        return ProductTile(_.products[index]);
                      });
                }
              }),
            )
          ],
        );
          },
        ));
  }
}
