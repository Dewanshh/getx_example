import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex2/Controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final cont = Get.put(logincontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: cont.email.value,
            decoration: InputDecoration(hintText: "Enter Email"),
          ),
          TextFormField(
            controller: cont.pass.value,
            decoration: InputDecoration(hintText: "Enter Password"),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => cont.isloading.value
              ? CircularProgressIndicator()
              : TextButton(
                  onPressed: () {
                    cont.logininfo();
                  },
                  child: Text("Button")))
        ],
      ),
    ));
  }
}
