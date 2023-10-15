import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/storage/local_data.dart';

class MainAppController extends GetxController {
  RxBool isDarkTheme = false.obs;
  @override
  void onInit() {
    checkTheme();
    super.onInit();
  }

  checkTheme() async {
    isDarkTheme.value = await LocalData().getThemeData();
    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.light : ThemeMode.dark);
  }

  changeTheme() async {
    isDarkTheme.value = !isDarkTheme.value;
    await LocalData().setThemeData(isDarkTheme.value);

    Get.changeThemeMode(isDarkTheme.value ? ThemeMode.light : ThemeMode.dark);
  }
}
