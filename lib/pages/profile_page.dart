import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/user_controller.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatelessWidget {
  final UserController userController = Get.find<UserController>();
  final File? imageFile; // Terima file gambar dari PhotoUploadPage

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
              buildProfileInfo('Username', userController.username.value, verticalPadding: 20.0),
              buildProfileInfo('Name', userController.name.value, verticalPadding: 20.0),
              buildProfileInfo('Email', userController.email.value, verticalPadding: 20.0),
              buildProfileInfo('Phone', userController.phone.value, verticalPadding: 20.0),
              buildProfileInfo('Address', userController.address.value, verticalPadding: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membangun informasi profil dengan border
  Widget buildProfileInfo(String title, String value, {double verticalPadding = 10.0, double containerWidth = 350.0}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Margin kiri kanan 10
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5), // Padding vertikal dan horizontal
      width: containerWidth, // Lebar Container
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey, // Warna border
          width: 1.0, // Lebar border (bisa diganti sesuai kebutuhan)
        ),
        borderRadius: BorderRadius.circular(10), // Sudut border
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

