import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/app/modules/user_input/user_input_controller.dart';
import 'package:untitled/widgets/m_app_bar.dart';

class UserInputView extends GetView<UserInputController> {
  const UserInputView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserInputController());
    return Scaffold(
        appBar: MAppBar(
          title: 'User Input',
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.textEditingController,
                decoration: InputDecoration(
                  label: Text('User Name'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(238, 119, 23, 0.486), width: 5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 243, 239, 20), width: 5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 159, 226, 159), width: 5),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 240, 86, 25), width: 5),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // TextFormField(
              //   decoration: InputDecoration(
              //     label: Text('Password'),
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(
              //           color: Color.fromARGB(255, 156, 203, 241), width: 5),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //           color: const Color.fromARGB(255, 161, 203, 238),
              //           width: 5),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //           color: const Color.fromARGB(255, 165, 207, 241),
              //           width: 5),
              //     ),
              //     errorBorder: OutlineInputBorder(
              //       borderSide: BorderSide(
              //           color: Color.fromARGB(255, 243, 116, 57), width: 5),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  controller.chackData();
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ));
  }
}
