import 'package:demo/controllers/products/ProductController.dart';
import 'package:demo/providers/ProductProvider.dart';
import 'package:demo/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class ProductBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));
    Get.lazyPut<ProductController>(() => ProductController(Get.find()));
  }
}