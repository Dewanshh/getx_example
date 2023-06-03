import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  final cont = Get.put(GetXController());

  @override
  Widget build(BuildContext context) {
    print("Rebuild Called");

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Notifications"),
                Obx(
                  () => Switch(
                      value: cont.notifications.value,
                      onChanged: (value) {
                        cont.setnotification(value);
                      }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
