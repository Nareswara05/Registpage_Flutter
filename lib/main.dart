import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/routes/AppPages.dart';
import 'package:register_page_flutter/controller/user_controller.dart';
import 'package:register_page_flutter/controller/RegistController/Regist_controller.dart';
import 'package:register_page_flutter/controller/ProfileController/Profile_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Register App',
      initialRoute: '/register',
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialBinding: BindingsBuilder(() {
        Get.put(UserController());
        Get.put(RegistController());
        Get.put(ProfileController());
      }),

    );
  }

}
