  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'dart:io';
  import 'package:image_picker/image_picker.dart';
  import 'package:register_page_flutter/controller/user_controller.dart';
  import 'package:register_page_flutter/pages/profile_page.dart';
  import 'package:register_page_flutter/controller/ProfileController/Profile_controller.dart';



  class RegistController extends GetxController{
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController addressController = TextEditingController();
    var _selectedImageFile = Rx<File?>(null);
    final _formKey = GlobalKey<FormState>();

    final UserController userController = Get.find<UserController>();
    final ProfileController profileController = Get.put(ProfileController());



    String? validateEmail(String? value) {
      if (value == null || value.isEmpty || !value.contains('@gmail.com')) {
        return 'Email tidak valid';
      }
      return null;
    }



    File? get selectedImageFile => _selectedImageFile.value;
    Future<void> pickImage() async {
      final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        _selectedImageFile.value = File(pickedFile.path);
      }
    }

    void onSubmit() {
      if (_formKey.currentState != null && _formKey.currentState!.validate()) {

        userController.username.value = 'newUsername';
        userController.name.value = 'newName';
        userController.email.value = 'newEmail';
        userController.phone.value = 'newPhone';
        userController.address.value = 'newAddress';


      }
      Get.toNamed('/photo_upload');
    }




    void onRegister() {
      if (selectedImageFile == null) {
        Get.snackbar(
          'Error',
          'Please select an image before registering.',
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        // Arahkan pengguna ke halaman profil (ProfilePage) dan kirim file gambar
        Get.to(ProfilePage(imageFile: selectedImageFile));

      }
    }

  }