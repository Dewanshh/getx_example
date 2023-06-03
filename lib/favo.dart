import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex2/Controller.dart';

class favo extends StatefulWidget {
  const favo({Key? key}) : super(key: key);

  @override
  State<favo> createState() => _favoState();
}

class _favoState extends State<favo> {
  final favv = Get.put(favcontroller());

  @override
  Widget build(BuildContext context) {
    print("Rebuild in progress");
    return Scaffold(
        body: ListView.builder(
            itemCount: favv.cars.length,
            itemBuilder: (context, index) {
              return Card(
                child: Obx(
                  () => ListTile(
                    title: Text(favv.cars.value[index].toString()),
                    leading: Icon(Icons.favorite,
                        color: favv.containss(favv.cars.value[index])
                            ? Colors.red
                            : Colors.white),
                    onTap: () {
                      if (favv.containss(favv.cars.value[index])) {
                        favv.favremove(favv.cars.value[index]);
                      } else {
                        favv.favadd(favv.cars.value[index]);
                      }
                    },
                  ),
                ),
              );
            }));
  }
}
