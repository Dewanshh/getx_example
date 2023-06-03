import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ex2/ob.dart';

class expense extends StatefulWidget {
  const expense({Key? key}) : super(key: key);

  @override
  State<expense> createState() => _expenseState();
}

class _expenseState extends State<expense> {
  final exp = Get.put(tracking());
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 1;
    var width = MediaQuery.of(context).size.width * 1;
    print("r");
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Container(
              height: height * 0.5,
              child: Column(
                children: [
                  Obx(
                    () => Text(
                      "Rs. " + exp.total.value.toString(),
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: exp.ex.value,
                    decoration: InputDecoration(hintText: "Enter Expense"),
                  ),
                  SizedBox(height: 50),
                  TextField(
                    controller: exp.detail.value,
                    decoration: InputDecoration(hintText: "Enter Reason"),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            shop x = shop(int.parse(exp.ex.value.text),
                                exp.detail.value.text);
                            exp.adddetail(x, '+');
                          },
                          child: Text("Add")),
                      SizedBox(
                        width: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            shop x = shop(int.parse(exp.ex.value.text),
                                exp.detail.value.text);
                            exp.adddetail(x, '-');
                          },
                          child: Text("Sub")),
                    ],
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Obx(() => Container(
                  height: height * 0.5,
                  child: ListView.builder(
                      itemCount: exp.ob.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(exp.ob[index].expense.toString()),
                            subtitle: Text(exp.ob[index].detail.toString()),
                          ),
                        );
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
