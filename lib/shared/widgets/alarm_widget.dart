import 'package:flutter/material.dart';
import 'package:flutter_assistant/modules/time/controller/time_management_controller.dart';
import 'package:get/get.dart';

class AlarmWidget extends StatelessWidget {
  const AlarmWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TimeManagementController>();
    return Obx(
      () => controller.alarmList.isNotEmpty
          ? ListView.builder(
              itemCount: controller.alarmList.length,
              itemBuilder: (context, index) {
                return Obx(() => ListTile(
                  enabled: controller.isItemClicked.value,
                  leading: controller.isItemClicked.value ?
                  IconButton(onPressed: () {
                    controller.deleteAlarm(index);
                  },
                    icon: const Icon(Icons.delete, color: Colors.grey,),
                  ) : const Icon(Icons.alarm, color: Color(0xFF616161), size: 32.0,),
                  contentPadding: const EdgeInsets.all(16.0),
                  title: Text(
                    controller.alarmList[index].time.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 32.0),
                  ),
                  subtitle: const Text(
                    'Báo thức',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                  trailing: Switch(
                    onChanged: (bool value) {
                      controller.changeStatus(index, value);
                    },
                    value: controller.alarmList[index].isAlarm,
                  ),
                  onTap: () => controller.onItemAlarmClicked(context, index),
                ),);
              })
          : const Center(
              child: Text(
                'Chưa có báo thức nào được tạo.',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
    );
  }
}
