import 'package:get/get.dart';
import 'package:untitled/app/modules/user_input/user_input_controller.dart';

class UserInputBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserInputController());
  }
}
