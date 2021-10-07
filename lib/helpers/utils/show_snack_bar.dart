import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarUtils {
  void showSnackBar(String content) {
    Get.snackbar("Shane Manga", content,
        backgroundColor: Colors.black,
        colorText: Colors.white,
        duration: Duration(seconds: 2));
  }
}
