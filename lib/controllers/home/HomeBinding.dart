import 'package:demo/controllers/home/HomeController.dart';
import 'package:demo/providers/CategoryProvider.dart';
import 'package:demo/providers/OfferProvider.dart';
import 'package:demo/providers/ProductProvider.dart';
import 'package:demo/repositories/CategoryRepository.dart';
import 'package:demo/repositories/OfferRepository.dart';
import 'package:demo/repositories/ProductRepository.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OfferRepository>(() => OfferRepository(Get.find()));
    Get.lazyPut<OfferProvider>(() => OfferProvider(Get.find()));

    Get.lazyPut<CategoryRepository>(() => CategoryRepository(Get.find()));
    Get.lazyPut<CategoryProvider>(() => CategoryProvider(Get.find()));

    Get.lazyPut<ProductRepository>(() => ProductRepository(Get.find()));
    Get.lazyPut<ProductProvider>(() => ProductProvider(Get.find()));

    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}