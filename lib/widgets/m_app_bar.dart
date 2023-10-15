import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/main_page/main_app_controller.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MAppBar({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainAppController());
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(title),
      actions: [
        Obx(() => IconButton(
            onPressed: () {
              controller.changeTheme();
            },
            icon: controller.isDarkTheme.value
                ? Icon(Icons.dark_mode)
                : Icon(Icons.light_mode))),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}
