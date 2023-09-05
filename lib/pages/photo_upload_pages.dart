import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:register_page_flutter/pages/profile_page.dart';
import 'dart:io';
import 'package:register_page_flutter/controller/user_controller.dart';


class PhotoUploadPage extends StatefulWidget {
  @override
  _PhotoUploadPageState createState() => _PhotoUploadPageState();
}

class _PhotoUploadPageState extends State<PhotoUploadPage> {
  File? _selectedImageFile;

  @override
  void initState() {
    super.initState();
    // Inisialisasi UserController
    Get.put(UserController());
  }

  Future<void> _pickImage() async {
    final imagePicker = ImagePicker();
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedImage != null) {
      setState(() {
        _selectedImageFile = File(pickedImage.path); // Simpan file gambar
      });
    }
  }

  void onRegister() {
    if (_selectedImageFile == null) {
      Get.snackbar(
        'Error',
        'Please select an image before registering.',
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      // Arahkan pengguna ke halaman profil (ProfilePage) dan kirim file gambar
      Get.to(ProfilePage(imageFile: _selectedImageFile));

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Upload Photo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _selectedImageFile != null
                ? ClipOval(
              child: Image.file(
                _selectedImageFile!,
                width: 150,
                height: 150,
                fit: BoxFit.cover, // Mengatur gambar agar sesuai dalam lingkaran
              ),
            )
                : Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey, // Warna latar belakang lingkaran jika tidak ada gambar yang dipilih
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickImage,
              child: Text('Select Image'),
            ),
            ElevatedButton(
              onPressed: onRegister,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }}
