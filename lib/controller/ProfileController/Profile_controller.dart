import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/user_controller.dart';

class ProfileController extends GetxController {
  final UserController userController = Get.find<UserController>();

  Widget buildProfileInfo(IconData icon, String value, {double verticalPadding = 10.0}) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 20.0,
                  color: Colors.black,
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: verticalPadding),
        ],
      ),
    );
  }
}
