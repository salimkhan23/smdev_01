import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/home/home_screen/home_view.dart';

class UserInputController extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  @override
  void onClose() {
    textEditingController.dispose();
    super.onClose();
  }

  chackData() async {
    if (textEditingController.text == "") {
      Get.snackbar("Input field ", "Text Form empty",
          duration: Duration(
            seconds: 5,
          ));
    } else if (textEditingController.text.contains(" ")) {
      Get.snackbar('Input field', 'user name invalid',
          duration: Duration(seconds: 5));
    } else {
      Get.to(() => HomeView(), arguments: textEditingController.text);
    }
  }
}
