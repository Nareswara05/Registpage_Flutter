import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/user_controller.dart';


class ProfileController extends GetxController {
  final UserController userController = Get.find<UserController>();

  Widget buildProfileInfo(String title, String value,
      {double verticalPadding = 10.0, double containerWidth = 350.0}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: containerWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
