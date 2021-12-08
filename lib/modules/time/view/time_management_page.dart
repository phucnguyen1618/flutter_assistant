import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/modules/time/controller/time_management_controller.dart';
import 'package:flutter_assistant/routes/app_routes.dart';
import 'package:flutter_assistant/shared/widgets/alarm_widget.dart';
import 'package:flutter_assistant/shared/widgets/plan_widget.dart';
import 'package:flutter_assistant/shared/navigation_drawer/drawer_menu.dart';
import 'package:get/get.dart';

class TimeManagementPage extends StatelessWidget {
  const TimeManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TimeManagementController());
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Quản lý thời gian',
            style: TextStyle(color: Colors.black, fontSize: 16.0),
          ),
          actions: [
            Obx(
              () => controller.currentIndex.value == 1
                  ? Visibility(
                      visible: controller.alarmList.isNotEmpty,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 10.0,
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () => controller.onTextEditClicked(),
                            child: Text(
                              controller.isItemClicked.value ? 'Huỷ' : 'Sửa',
                              style:
                                  const TextStyle(color: Colors.blue, fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: TabBar(
                tabs: const [
                  Tab(text: 'Kế Họach'),
                  Tab(
                    text: 'Báo Thức',
                  ),
                ],
                onTap: (index) {
                  controller.currentIndex.value = index;
                },
              )),
        ),
        body: const TabBarView(
          children: [
            PlanWidget(),
            AlarmWidget(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            controller.currentIndex.value == 0
                ? Get.toNamed(Routes.PLANNING)
                : controller.showBottomSheet();
          },
        ),
      ),
    );
  }
}
