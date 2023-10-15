import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'app/modules/main_page/main_app_view.dart';

void main() async {
  await GetStorage.init();
  runApp(const MainAppView());
}
