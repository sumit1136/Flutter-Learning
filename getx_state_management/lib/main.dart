import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(Namecontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${c.name}")),
            ElevatedButton(
              onPressed: () => c.convertToUpper(),
              child: const Text('Change to uppercase'),
            ),
          ],
        ),
      ),
    );
  }
}

class Namecontroller extends GetxController {
  var name = "Sumit".obs;
  // nameChange(n) {
  //   name.value = n;
  // }
  void convertToUpper() {
    name.value = name.value.toUpperCase();
  }
}
