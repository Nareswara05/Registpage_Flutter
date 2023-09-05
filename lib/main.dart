import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/routes/app_pages.dart';
import 'package:register_page_flutter/controller/user_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Your App Name',
      initialRoute: '/register',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
        initialBinding: BindingsBuilder(() {
      Get.put(UserController());
      }),

    );
  }
}
