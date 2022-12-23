import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  bool isDarkMode = GetStorage().read('isDarkMode') ?? false;

  void toggleDarkMode() {
    isDarkMode = !isDarkMode;
    Get.changeTheme(isDarkMode
        ? ThemeData.dark(useMaterial3: true)
        : ThemeData.light(useMaterial3: true));
    GetStorage().write('isDarkMode', isDarkMode);
    update();
  }
}
