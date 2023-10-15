import 'package:get/get.dart';
import 'package:untitled/app/modules/main_page/main_app_controller.dart';

class MainAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MainAppController());
  }
}
