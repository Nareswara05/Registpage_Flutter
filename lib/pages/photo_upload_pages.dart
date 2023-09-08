import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:register_page_flutter/controller/RegistController/Regist_controller.dart';
class PhotoUploadPage extends StatefulWidget {
  @override
  _PhotoUploadPageState createState() => _PhotoUploadPageState();
}

class _PhotoUploadPageState extends State<PhotoUploadPage> {
  final RegistController registController = Get.put(RegistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Upload Photo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Obx(() => registController.selectedImageFile != null
                ? ClipOval(
              child: Image.file(
                registController.selectedImageFile!,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            )
                : Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),),
            ElevatedButton(
              onPressed: () => registController.pickImage(),
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(), backgroundColor: Colors.blue,
                padding: EdgeInsets.all(10.0),
              ),
              child: Icon(
                CupertinoIcons.plus,
                size: 32.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: ()=>registController.onRegister(),
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }}
