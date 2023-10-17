import 'package:get_storage/get_storage.dart';

class LocalData {
  final box = GetStorage();
  final String userData = 'userData';

  getThemeData() async {
    return await box.read(userData) ?? false;
  }

  setThemeData(bool value) async {
    await box.write(userData, value);
  }
}



// class ListData {
//   final box = GetStorage();
//   final String userListData = 'userListData';

//   getMGridView() async {
//     return await box.read(userListData) ?? false;
//   }

//   setMGridView(bool value) async {
//     await box.write(userListData, value);
//   }
// }
