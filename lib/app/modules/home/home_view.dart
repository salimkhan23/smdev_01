import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled/app/modules/home/home_controller.dart';
import 'package:untitled/image_screen/home_image.dart';
import 'package:untitled/widgets/m_app_bar.dart';

import '../../../widgets/m_app_home_image.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: MAppBar(title: 'Home View'),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            MAppImage(
              image: MImagePath.main,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset(
                MImagePath.home,
                fit: BoxFit.contain,
                width: 200,
                height: 200,
              ),
            )
          ],
        ),
      ),
    );
  }
}
