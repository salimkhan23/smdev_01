import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/splash_screen/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Loading.....',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
