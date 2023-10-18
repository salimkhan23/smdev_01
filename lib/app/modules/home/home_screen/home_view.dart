import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:untitled/app/modules/home/home_screen/home_controller.dart';
import 'package:untitled/app/modules/home/home_widgets/m_grid_view.dart';
import 'package:untitled/app/modules/home/home_widgets/m_list_view.dart';
import 'package:untitled/app/modules/home/home_widgets/m_text.dart';

import 'package:untitled/widgets/m_app_bar.dart';

import '../../../../widgets/m_app_home_image.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: MAppBar(title: 'Home View'),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: Get.width / 5,
                          height: Get.width / 5,
                          child: CircularProgressIndicator(),
                        ),
                        SizedBox(
                          height: Get.width / 5,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.cancel),
                            label: Text('Cancel')),
                      ],
                    ),
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MAppImage(
                            image: controller.userImage.value,
                          ),
                          Column(
                            children: [
                              MText(
                                text: controller.userNmae.value,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              SizedBox(height: 10),
                              MText(
                                text: controller.user.value,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      MText(
                          text:
                              // 'Always keep two words in mind Alhamdulillah and Astagfirullah ♥️⁣'
                              controller.userBoi.value),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: MText(
                                text: 'Sort^',
                                fontSize: 20,
                              )),
                          MText(
                            text: "Repo List",
                            fontSize: 20,
                          ),
                          InkWell(
                            child: IconButton(
                              onPressed: () {
                                controller.visibilityChange();
                              },
                              icon: controller.isClick.value
                                  ? Icon(
                                      Icons.list,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.grid_view,
                                      size: 25,
                                    ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Obx(() =>
                          controller.isClick.value ? MGridView() : MListView()),

                      // MGridView(),
                      // MListView()
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
