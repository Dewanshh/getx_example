import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_ex2/Controller.dart';
import 'package:getx_ex2/loginpage.dart';
import 'package:getx_ex2/second.dart';
import 'package:getx_ex2/third.dart';

import 'Expense.dart';
import 'favo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              child: Text("Opacity Changer Screen"),
              onPressed: () {
                Get.to(() => second());
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              child: Text("Notification Changer"),
              onPressed: () {
                Get.to(() => third());
              },
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              child: Text("Favorite List"),
              onPressed: () {
                Get.to(() => favo());
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("Login Page"),
              onPressed: () {
                Get.to(() => LoginPage());
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text("Expense Tracker"),
              onPressed: () {
                Get.to(() => expense());
              },
            ),
          ],
        ),
      ),
    );
  }
}
