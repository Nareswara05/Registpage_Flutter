import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/user_controller.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  final UserController userController = Get.find<UserController>(); // Gunakan controller

  void onSubmit() {
    final username = usernameController.text;
    final name = nameController.text;
    final email = emailController.text;
    final phone = phoneController.text;
    final address = addressController.text;

    userController.setUserDetails(
      username: username,
      name: name,
      email: email,
      phone: phone,
      address: address,
    );

    Get.toNamed('/photo_upload');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Create Your Account',
              style: TextStyle(
                fontSize: 24, // Sesuaikan ukuran teks dengan preferensi Anda
                fontWeight: FontWeight.bold, // Sesuaikan gaya teks dengan preferensi Anda
              ),
            ),
            Text(
              'please enter info to create account',
              style: TextStyle(
                fontSize: 15, // Sesuaikan ukuran teks dengan preferensi Anda
                fontWeight: FontWeight.normal, // Sesuaikan gaya teks dengan preferensi Anda
              ),
            ),
            SizedBox(height: 20), // Jarak antara input
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(CupertinoIcons.person),
              ),
            ),
            SizedBox(height: 10), // Jarak antara input
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                icon: Icon(CupertinoIcons.person),
              ),
            ),
            SizedBox(height: 10), // Jarak antara input
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(CupertinoIcons.mail),
              ),
            ),
            SizedBox(height: 10), // Jarak antara input
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                icon: Icon(CupertinoIcons.phone),
              ),
            ),
            SizedBox(height: 10), // Jarak antara input
            TextField(
              controller: addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                icon: Icon(CupertinoIcons.location),
              ),
            ),
            SizedBox(height: 20), // Jarak antara input dan tombol
            SizedBox(
              width: double.infinity, // Tombol mengambil lebar penuh parent
              child: ElevatedButton(
                onPressed: onSubmit,
                child: Text('Submit'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
