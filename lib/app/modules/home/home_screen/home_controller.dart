import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as https;

class HomeController extends GetxController {
  RxBool isClick = false.obs;

  var apiData;
  @override
  void onInit() {
    isLoading.value = false;
    apiData = Get.arguments;
    callUserData(apiData);
    visibilityChange();
    super.onInit();
  }

  RxBool isLoading = true.obs;

  void visibilityChange() {
    isClick.value = !isClick.value;
  }

  RxString userNmae = ''.obs;
  RxString user = ''.obs;
  RxString userImage = ''.obs;
  RxString userBoi = ''.obs;

  callUserData(String username) async {
    String url = 'https://api.github.com/users/$username';
    var reposityData = await https.get(Uri.parse(url));
    if (reposityData.statusCode == 200) {
      var userData = json.decode(reposityData.body);
      userNmae.value = userData['company'] ?? ' ';
      user.value = userData['name'] ?? ' ';
      userImage = userData['avatar_url'] ?? ' ';
      userBoi = userData['bio'] ?? ' ';

      callUserRepoData(username);
    } else {
      Get.back();
    }
  }

  callUserRepoData(String username) async {
    String url = 'https://api.github.com/users/$username/repos';
    var reposityData = await https.get(Uri.parse(url));
    if (reposityData.statusCode == 200) {
      var userData = json.decode(reposityData.body);

      print(userData);
    }
  }
}
