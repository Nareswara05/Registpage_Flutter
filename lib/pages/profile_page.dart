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
            children: [
              // Background Container
              Container(
                width: double.infinity, // 100% lebar perangkat
                color: Colors.blue, // Warna latar belakang
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    // Foto Profil di Bawah Background
                    if (imageFile != null)
                      ClipOval(
                        child: Image.file(
                          imageFile!,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Informasi Profil dengan Border
              profileController.buildProfileInfo('Username',
                  registController.usernameController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(
                  'Name', registController.nameController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(
                  'Email', registController.emailController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo(
                  'Phone', registController.phoneController.text.toString(),
                  verticalPadding: 20.0),
              profileController.buildProfileInfo('Address',
                  registController.usernameController.text.toString(),
                  verticalPadding: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun informasi profil dengan border
}
