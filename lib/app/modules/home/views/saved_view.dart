import 'package:cashcalc/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class SavedView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SavedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
