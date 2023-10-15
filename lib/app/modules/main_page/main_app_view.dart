import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/main_page/main_app_controller.dart';
import 'package:untitled/app/routes/route_page.dart';
import 'package:untitled/themes/dark_themes.dart';
import 'package:untitled/themes/light_themes.dart';

class MainAppView extends GetView<MainAppController> {
  const MainAppView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppController());
    return GetMaterialApp(
      theme: lightThemes,
      darkTheme: darkThemes,
      themeMode:
          controller.isDarkTheme.value ? ThemeMode.light : ThemeMode.dark,
      initialRoute: RoutePage.initial,
      getPages: RoutePage.pages,
    );
  }
}
