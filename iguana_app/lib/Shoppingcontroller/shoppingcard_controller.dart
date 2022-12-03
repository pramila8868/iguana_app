import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartController extends GetxController {
  var incenumber = 0.obs;
  var decnumber = 0.obs;
  int get sum => incenumber.value + decnumber.value;

  increment() {
    // method
    incenumber.value++;
  }

  decrement() {
    // method
    // booknumber.value--;
    if (incenumber.value <= 0) {
      Get.snackbar(
        "error",
        "cannot be less than zero",
        icon: Icon(Icons.alarm),
        //barBlur: 1000,
        isDismissible: false,
        duration: Duration(seconds: 3),
      );
    } else {
      incenumber.value--;
    }
  }

  incrementPens() {
    // method
    decnumber.value++;
  }

  decrementPens() {
    // method
    // booknumber.value--;
    if (decnumber.value <= 0) {
      Get.snackbar(
        "error",
        "cannot be less than zero",
        icon: Icon(Icons.alarm),
        barBlur: 90,
        backgroundColor: Colors.red,
        isDismissible: false,
        duration: Duration(seconds: 3),
      );
    } else {
      decnumber.value--;
    }
  }
}
