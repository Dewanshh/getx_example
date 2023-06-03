import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class shop {
  late int expense;
  late String detail;

  shop(int i, String j) {
    this.expense = i;
    this.detail = j;
  }
}

class tracking extends GetxController {
  Rx<TextEditingController> ex = TextEditingController().obs;
  Rx<TextEditingController> detail = TextEditingController().obs;

  RxInt expense = 0.obs;
  RxInt total = 0.obs;
  List ob = [].obs;

  adddetail(shop x, String s) {
    if (ex.value != Null && detail != Null && s == '+') {
      ob.add(x);
      this.total.value = this.total.value + x.expense;
    } else if (ex.value != Null && detail != Null && s == '-') {
      ob.add(x);
      this.total.value = this.total.value - x.expense;
    }
  }
}
