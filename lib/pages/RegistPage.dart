import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:register_page_flutter/controller/RegistController/Regist_controller.dart';

class RegisterPage extends StatelessWidget {


  final RegistController registController = Get.put(RegistController());
  final _formKey = GlobalKey<FormState>();






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Create Your Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'please enter info to create account',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: registController.usernameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Josee',
                prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: registController.nameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Jose Regio',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: registController.emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'example@gmail.com',
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )

              ),
              validator: registController.validateEmail,
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: registController.phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '08*******',
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                hintStyle: TextStyle(
                  color: Colors.grey
                )
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: registController.addressController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Jakarta, Indonesia',
                labelText: 'Address',
                prefixIcon: Icon(Icons.location_on),
                border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  )
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => registController.onSubmit(),
                child: Text('Submit'),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
