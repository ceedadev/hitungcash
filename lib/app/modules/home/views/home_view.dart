import 'package:cashcalc/app/modules/home/views/calculate_view.dart';
import 'package:cashcalc/app/modules/home/views/saved_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Calculate'),
                BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
              ],
            ),
            body: IndexedStack(
              index: controller.tabIndex,
              children: [CalculateView(), SavedView()],
            ));
      },
    );
  }
}
