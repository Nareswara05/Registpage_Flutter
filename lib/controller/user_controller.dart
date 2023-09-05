import 'package:get/get.dart';

class UserController extends GetxController {
  var username = ''.obs;
  var name = ''.obs;
  var email = ''.obs;
  var phone = ''.obs;
  var address = ''.obs;
  var photoUrl = ''.obs;

  void setUserDetails({
    required String username,
    required String name,
    required String email,
    required String phone,
    required String address,

  }) {
    this.username.value = username;
    this.name.value = name;
    this.email.value = email;
    this.phone.value = phone;
    this.address.value = address;
  }

  void setPhotoUrl(String url) {
    photoUrl.value = url;
  }
}
