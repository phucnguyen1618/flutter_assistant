import 'package:flutter/material.dart';
import 'package:flutter_assistant/models/spending.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

class SpendingManagementController extends GetxController {
  GlobalKey timeSpendingKey = GlobalKey();
  var hintText = 'Thời gian chi tiêu'.obs;

  setTimeSpending() async {
    TimeOfDay? selectedTime = await showTimePicker(
      context: timeSpendingKey.currentContext!,
      initialTime: TimeOfDay.now(),
      confirmText: 'OK',
      cancelText: 'Huỷ',
    );
    hintText.value =
        selectedTime!.hour.toString() + ":" + selectedTime.minute.toString();
  }

  saveSpending(double money, String description) {
    var spending = Spending(const Uuid().v1(), money, hintText.value, description);

  }
}
