import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:get_internationalisation/messages.dart';
import 'package:get_internationalisation/my_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController());

    return GetMaterialApp(
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: "Internationalisation",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Internationalisation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'hello'.tr,
                style: const TextStyle(fontSize: 25, color: Colors.pink),
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('hi', 'IN');
                },
                child: const Text("Hindi"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('fr', 'FR');
                },
                child: const Text("French"),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  myController.changeLanguage('en', 'US');
                },
                child: const Text("English"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
