import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Cash'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Table(
                // border: TableBorder.all(),
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(0.5),
                  2: FlexColumnWidth(2),
                  3: FlexColumnWidth(0.5),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  cashTableRow(denomination: '100.000', color: Colors.red, controller: controller.c100000),
                  cashTableRow(denomination: '75.000', color: Colors.pink, controller: controller.c75000),
                  cashTableRow(
                    denomination: '50.000',
                    color: Colors.blue,
                    controller: controller.c50000,
                  ),
                  cashTableRow(
                    denomination: '20.000',
                    color: Colors.green,
                    controller: controller.c20000,
                  ),
                  cashTableRow(
                    denomination: '10.000',
                    color: Colors.purple,
                    controller: controller.c10000,
                  ),
                  cashTableRow(
                    denomination: '5.000',
                    color: Colors.yellow,
                    controller: controller.c5000,
                  ),
                  cashTableRow(
                    denomination: '2.000',
                    color: Colors.grey,
                    controller: controller.c2000,
                  ),
                  cashTableRow(
                    denomination: '1.000',
                    color: Colors.lime,
                    controller: controller.c1000,
                  ),
                  cashTableRow(
                    denomination: '500',
                    color: Colors.lime,
                    controller: controller.c500,
                  ),
                  cashTableRow(
                    denomination: '200',
                    color: Colors.lime,
                    controller: controller.c200,
                  ),
                  cashTableRow(
                    denomination: '100',
                    color: Colors.lime,
                    controller: controller.c100,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Obx(() => Text(
                    controller.formatCount.string,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // TODO : Save to DB function call
                    },
                    child: Text('Simpan'),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
                    onPressed: () {
                      controller.clear();
                    },
                    child: Text('Clear'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calculate),
      //       label: 'Hitung',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.history),
      //       label: 'History',
      //     ),
      //   ],
      // ),
    );
  }

  TableRow cashTableRow({
    Key? key,
    required String denomination,
    required Color color,
    TextEditingController? controller,
  }) {
    return TableRow(children: [
      Container(
        height: 42,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(blurRadius: 1, offset: Offset(0, 1), color: Colors.grey)],
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            denomination,
            style: TextStyle(color: Colors.black.withOpacity(0.5), fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Text('x'),
        ),
      ),
      Container(
        height: 42,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: TextField(
          onChanged: (String value) async {
            this.controller.calculate();
          },
          // onEditingComplete: this.controller.calculate,
          controller: controller,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          textAlignVertical: TextAlignVertical.top,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      // IconButton(onPressed: () {}, icon: Icon(Icons.clear_rounded))
    ]);
  }
}
