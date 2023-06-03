import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex2/Controller.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  final cont = Get.put(GetXController());

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    print("REbvu");
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => Container(
              height: height * 0.5,
              color: Colors.teal.withOpacity(cont.x.value),
            ),
          ),
          Obx(() => Container(
                height: height * 0.25,
                color: Colors.pink.withOpacity(cont.x.value),
              )),
          Obx(
            () => Container(
              height: height * 0.25,
              child: Slider(
                  value: cont.x.value,
                  onChanged: (value) {
                    cont.setopacity(value);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
