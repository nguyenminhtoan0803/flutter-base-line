import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late PageController pageController;
  late CarouselController carouselController;

  var currentPage = 0.obs;
  var currentBanner = 0.obs;

  List<Widget> pages = [
  ];
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    carouselController = CarouselController();
    super.onInit();
  }


  void goToTab(int page) {
    currentPage.value = page;
    pageController.jumpToPage(page);
  }

  void changeBanner(int index) {
    currentBanner.value = index;
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }
}
