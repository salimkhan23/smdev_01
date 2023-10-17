import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isClick = false.obs;
  @override
  void onInit() {
    // checkGridView();
    isClick();
    super.onInit();
  }

  RxBool isLoading = false.obs;

//   checkGridView() async {
//     isGridView.value = await ListData().getMGridView();
//     Get.changeThemeMode(
//         isGridView.value ? );
//   }

//   chengeGridView() async {
//     isGridView.value = !isGridView.value;
//     await ListData().setMGridView(isGridView.value);

// }
}
