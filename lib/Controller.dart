import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as https;

class GetXController extends GetxController {
  RxDouble x = 0.0.obs;
  RxBool notifications = false.obs;
  setopacity(value) {
    x.value = value;
  }

  setnotification(value) {
    notifications.value = value;
  }
}

class favcontroller extends GetXController {
  RxList<String> cars =
      ['Mercedes', 'BMW', 'Ferrari', 'Rolls Royyce', 'Land Rover'].obs;
  RxList fav = [].obs;

  favadd(value) {
    fav.add(value);
  }

  favremove(value) {
    fav.remove(value);
  }

  containss(value) {
    if (fav.contains(value)) {
      return true;
    } else {
      return false;
    }
  }
}

class logincontroller extends GetXController {
  final Rx<TextEditingController> email = TextEditingController().obs;
  final Rx<TextEditingController> pass = TextEditingController().obs;
  RxBool isloading = false.obs;

  logininfo() async {
    try {
      isloading.value = true;
      final response = await https.post(
          Uri.parse('https://reqres.in/api/login'),
          body: {'email': email.value.text, 'password': pass.value.text});
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        isloading.value = false;
        Get.snackbar("Login Succesfull", "Congratulations");
      } else {
        isloading.value = false;
        Get.snackbar("Login UnSuccesfull", data['error'].toString());
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
