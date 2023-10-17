import 'package:get/get.dart';
import 'package:untitled/app/modules/home/home_screen/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
