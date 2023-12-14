import 'package:demo/controllers/home/HomeBinding.dart';
import 'package:get/route_manager.dart';

class Routes {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    )
  ];
}