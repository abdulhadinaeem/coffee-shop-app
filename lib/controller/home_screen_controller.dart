import 'package:coffe_shop_app/res/resorces.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  var category = List.generate(5, (index) => false).obs;
  var selectedCategory = 0.obs;

  @override
  void onInit() {
    super.onInit();
    preCacheImages();
  }

  void preCacheImages() {
    for (var image in images) {
      precacheImage(image, Get.context!);
    }
  }

  void selectCategory(int index) {
    selectedCategory.value = index;
    for (int i = 0; i < category.length; i++) {
      category[i] = i == index;
    }
  }
}
