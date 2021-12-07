import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_assistant/models/alarm.dart';
import 'package:flutter_assistant/modules/time/controller/time_management_controller.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

class CreateAlarmWidget extends StatelessWidget {
  const CreateAlarmWidget({Key? key, required this.alarm}) : super(key: key);

  final Alarm alarm;

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TimeManagementController>();
    DateTime dateTime = DateTime.now();
    return SizedBox(
      height: 450.0,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              height: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Huỷ')),
                  const Text(
                    'Thêm báo thức',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        controller.addAlarm(
                            Alarm(
                                const Uuid().v1(),
                                DateFormat('HH:mm').format(dateTime),
                                true), (String notify) {
                          Navigator.pop(context);
                          Get.snackbar('Thông báo', notify);
                        }, (String error) {
                          log(error);
                        });
                      },
                      child: const Text('Lưu')),
                ],
              ),
            ),
            TimePickerSpinner(
              isForce2Digits: true,
              is24HourMode: true,
              onTimeChange: (time) {
                dateTime = time;
              },
            ),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 56,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Âm báo',
                      style: TextStyle(
                          color: Color(0xFF757575),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    TextButton(
                      onPressed: () => controller.onAlarmToneClicked(),
                      child: Row(
                        children: [
                          Obx(
                            () => Text(
                              controller.ringTones.value.name.toString(),
                              style: const TextStyle(
                                  color: Color(0xFF757575), fontSize: 18.0),
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF757575),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 56,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Báo lại',
                      style: TextStyle(
                          color: Color(0xFF757575),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    Switch(
                      value: false,
                      onChanged: (value) {},
                    )
                  ],
                ),
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
