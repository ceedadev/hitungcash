import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HomeController extends GetxController {
  final TextEditingController c100000 = TextEditingController();
  final TextEditingController c50000 = TextEditingController();
  final TextEditingController c75000 = TextEditingController();
  final TextEditingController c20000 = TextEditingController();
  final TextEditingController c10000 = TextEditingController();
  final TextEditingController c5000 = TextEditingController();
  final TextEditingController c2000 = TextEditingController();
  final TextEditingController c1000 = TextEditingController();
  final TextEditingController c500 = TextEditingController();
  final TextEditingController c200 = TextEditingController();
  final TextEditingController c100 = TextEditingController();

  final count = 0.obs;
  final formatCount = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    c100000.dispose();
    c75000.dispose();
    c50000.dispose();
    c20000.dispose();
    c10000.dispose();
    c5000.dispose();
    c2000.dispose();
    c1000.dispose();
    c500.dispose();
    c200.dispose();
    c100.dispose();
  }

  void increment() => count.value++;

  void clear() {
    c100000.clear();
    c75000.clear();
    c50000.clear();
    c20000.clear();
    c10000.clear();
    c5000.clear();
    c2000.clear();
    c1000.clear();
    c500.clear();
    c200.clear();
    c100.clear();
    count.value = 0;
    formatCount.value = '';
  }

  void calculate() {
    var total = 0;
    if (c100000.text != '') {
      final n100000 = num.parse(c100000.text);
      total += (100000 * n100000.toInt());
    }
    if (c75000.text != '') {
      final n75000 = num.parse(c75000.text);
      total += (75000 * n75000.toInt());
    }
    if (c50000.text != '') {
      final n50000 = num.parse(c50000.text);
      total += (50000 * n50000.toInt());
    }
    if (c20000.text != '') {
      final n20000 = num.parse(c20000.text);
      total += (20000 * n20000.toInt());
    }
    if (c10000.text != '') {
      final n10000 = num.parse(c10000.text);
      total += (10000 * n10000.toInt());
    }
    if (c5000.text != '') {
      final n5000 = num.parse(c5000.text);
      total += (5000 * n5000.toInt());
    }
    if (c2000.text != '') {
      final n2000 = num.parse(c2000.text);
      total += (2000 * n2000.toInt());
    }
    if (c1000.text != '') {
      final n1000 = num.parse(c1000.text);
      total += (1000 * n1000.toInt());
    }
    if (c500.text != '') {
      final n500 = num.parse(c500.text);
      total += (500 * n500.toInt());
    }
    if (c200.text != '') {
      final n200 = num.parse(c200.text);
      total += (200 * n200.toInt());
    }
    if (c100.text != '') {
      final n100 = num.parse(c100.text);
      total += (100 * n100.toInt());
    }

    print(total);
    this.count.value = total;

    var formatter = NumberFormat('###,###,000');

    this.formatCount.value = formatter.format(total);
  }
}
