import 'package:get/get.dart';
import 'package:register_page_flutter/pages/RegistPage.dart';
import 'package:register_page_flutter/pages/photo_upload_pages.dart';
import 'package:register_page_flutter/pages/profile_page.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: '/register',
      page: () => RegisterPage(),
    ),
    GetPage(
      name: '/photo_upload',
      page: () => PhotoUploadPage(),
    ),
    GetPage(
      name: '/profile',
      page: () => ProfilePage(),
    ),
  ];
}
