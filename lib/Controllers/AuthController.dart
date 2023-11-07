import 'dart:convert';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthController extends GetxController {
  Future<void> onCreateAccount(
      String name, String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("https://krazyklean.customwebs.online/api/auth/login/store"),
        body: {"name": name, "email": email, "password": password},
      );

      if (response.statusCode == 200) {
        Fluttertoast.showToast(msg: response.body);
      } else {
        Fluttertoast.showToast(msg: response.body);
      }
    } catch (error) {
      Fluttertoast.showToast(msg: "Error occurred: $error");
    }
  }
}
