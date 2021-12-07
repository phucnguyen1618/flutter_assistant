import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/shared/navigation_drawer/drawer_menu.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class SpendingManagementPage extends StatelessWidget {
  const SpendingManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          );
        }),
        title: const Text(
          'Quản lý chi tiêu',
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DatePicker(
              DateTime.utc(2021, 12, 1),
              initialSelectedDate: DateTime.now(),
              selectionColor: Colors.blue,
              selectedTextColor: Colors.white,
              onDateChange: (date) {
                log(date.toIso8601String());
              },
            ),
            const SizedBox(height: 16.0,),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Chi tiêu',
                hintText: 'Số tiền mà bạn đã tiêu',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16.0,),
            Card(
              color: const Color(0xFFF5F5F5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: const BorderSide(
                    color: Color(0xFF717171), width: 1),
              ),
              child: const SizedBox(
                height: 300,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: 'Bạn đã chi tiêu cho mục đích gì ?',
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
