import 'package:get/get.dart';
import 'package:untitled/app/modules/home/home_binding.dart';
import 'package:untitled/app/modules/home/home_view.dart';
import 'package:untitled/app/modules/main_page/main_app_binding.dart';
import 'package:untitled/app/modules/main_page/main_app_view.dart';
import 'package:untitled/app/modules/splash_screen/splash_binding.dart';
import 'package:untitled/app/modules/splash_screen/splash_view.dart';
import 'package:untitled/app/modules/user_input/user_input_binding.dart';
import 'package:untitled/app/modules/user_input/user_input_view.dart';

part 'route_app.dart';

class RoutePage {
  RoutePage._();

  static const initial = Routes.splashScreen;

  static final pages = [
    GetPage(
      name: _Path.mainApp,
      page: () => const MainAppView(),
      binding: MainAppBinding(),
    ),
    GetPage(
      name: _Path.splashScreen,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Path.userInput,
      page: () => const UserInputView(),
      binding: UserInputBinding(),
    ),
    GetPage(
      name: _Path.homeScreen,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
