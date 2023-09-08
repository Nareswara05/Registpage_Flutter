import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/RegistController/Regist_controller.dart';
import 'package:register_page_flutter/controller/user_controller.dart';
import 'dart:io';
import 'package:register_page_flutter/controller/ProfileController/Profile_controller.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();
  final UserController userController = Get.find<UserController>();
  final RegistController registController = Get.find<RegistController>();
  final File? imageFile;

  ProfilePage({Key? key, this.imageFile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    if (imageFile != null)
                      ClipOval(
                        child: Image.file(
                          imageFile!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10.0),
                    Text(
                      registController.usernameController.text.toString(),
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

              profileController.buildProfileInfo(
                  Icons.person, registController.nameController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(
                  Icons.mail, registController.emailController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(
                  Icons.phone, registController.phoneController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(Icons.location_city,
                  registController.usernameController.text.toString(),
                  verticalPadding: 20.0),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}