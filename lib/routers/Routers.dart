import 'package:demo/controllers/home/HomeBinding.dart';
import 'package:demo/controllers/products/ProductBinding.dart';
import 'package:demo/views/authentication/LoginPage.dart';
import 'package:demo/views/authentication/SplashPage.dart';
import 'package:demo/views/home/HomePage.dart';
import 'package:demo/views/product/ProductPage.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/splash',
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/home',
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/product/:id',
      page: () => ProductPage(),
      binding: ProductBinding(),
    )
  ];
}