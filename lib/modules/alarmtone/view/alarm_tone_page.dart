import 'package:flutter/material.dart';
import 'package:flutter_assistant/modules/alarmtone/controller/alarm_tone_controller.dart';
import 'package:get/get.dart';

class AlarmTonePage extends StatelessWidget {
  const AlarmTonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AlarmToneController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text('Danh sách nhạc chuông', style: TextStyle(color: Colors.black, fontSize: 16.0),),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Obx(() => ListView.builder(
          itemCount: controller.listRingTones.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.listRingTones[index].name),
              onTap: (){
                Get.back(result: controller.listRingTones[index]);
              },
            );
          }),),
    );
  }
}
