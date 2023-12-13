import 'package:carousel_slider/carousel_controller.dart';
import 'package:demo/models/CategoryModel.dart';
import 'package:demo/models/OfferModel.dart';
import 'package:demo/models/ProductModel.dart';
import 'package:demo/providers/CategoryProvider.dart';
import 'package:demo/providers/OfferProvider.dart';
import 'package:demo/providers/ProductProvider.dart';
import 'package:demo/views/home/tab/CardTab.dart';
import 'package:demo/views/home/tab/ExploreTab.dart';
import 'package:demo/views/home/tab/FavoriteTab.dart';
import 'package:demo/views/home/tab/UserTab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final OfferProvider _offerProvider;
  HomeController(this._offerProvider);
  late PageController pageController;
  late CarouselController carouselController;
  late final CategoryProvider _categoryProvider = Get.find();
  late final ProductProvider _productProvider = Get.find();

  var currentPage = 0.obs;
  var currentBanner = 0.obs;
  var activeOffers = <OfferModel>[].obs;
  var categories = <CategoryModel>[].obs;
  var discountedProducts = <ProductModel>[].obs;

  List<Widget> pages = [
    const ExploreTab(),
    const FavoriteTab(),
    const CardTab(),
    UserTab(),
  ];
  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    carouselController = CarouselController();

    getOffers();
    getCategories();
    getDiscountedProducts();
    super.onInit();
  }

  void getOffers() {
    _offerProvider.getOffer().then((offers) {
      activeOffers.value = offers;
    });
  }

  void getCategories() {
    _categoryProvider.getCategories().then((categories) {
      this.categories.value = categories;
    });
  }

  void getDiscountedProducts() {
    _productProvider.getDiscountProducts().then((products) {
      discountedProducts(products);
    });
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
