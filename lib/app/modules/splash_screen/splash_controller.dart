import 'package:get/get.dart';
import 'package:untitled/app/routes/route_page.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    goToNextPage();
    super.onInit();
  }
}

goToNextPage() {
  Future.delayed(
      const Duration(seconds: 5),
      () => {
            Get.offAllNamed(Routes.userInput),
          });
}
