import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assistant/database/boxes.dart';
import 'package:flutter_assistant/models/alarm.dart';
import 'package:flutter_assistant/models/ringtones.dart';
import 'package:flutter_assistant/routes/app_routes.dart';
import 'package:flutter_assistant/shared/widgets/create_alarm_widget.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import '../../../main.dart';

class TimeManagementController extends GetxController {
  final boxes = Boxes.getAlarms();
  RxInt currentIndex = 0.obs;
  RxList<Alarm> alarmList = <Alarm>[].obs;
  var isRepeat = true.obs;
  var ringTones = RingTones('Radar', 'radar.mp3').obs;
  var isItemClicked = false.obs;
  var alarm = Alarm(
          const Uuid().v1(), DateFormat("HH:mm").format(DateTime.now()), false)
      .obs;

  @override
  void onInit() {
    super.onInit();

    getListAlarm();
  }

  changeStatus(int index, bool value) {
    Alarm? alarm = boxes.getAt(index);
    alarm!.isAlarm = value;
    boxes.putAt(index, alarm);
    getListAlarm();
    update();
  }

  addAlarm(Alarm alarm, Function(String notify) onSuccess,
      Function(String error) onError) async {
    log(alarm.time + ", " + alarm.isAlarm.toString());
    await boxes.add(alarm).then((value) {
      onSuccess("Đã đặt báo thức vào ${alarm.time}");
      scheduleAlarm(alarm);
    }).onError((error, stackTrace) => onError(error.toString()));
    await getListAlarm();
    update();
  }

  getListAlarm() {
    alarmList.value = boxes.values.toList();
  }

  deleteAlarm(int index) async {
    await boxes
        .deleteAt(index)
        .then((value) => getListAlarm())
        .onError((error, stackTrace) => log("Delete Error !!!"));
    alarmList.isEmpty
        ? isItemClicked.value = false
        : isItemClicked.value = true;
  }

  onAlarmToneClicked() async {
    ringTones.value = await Get.toNamed(Routes.ALARM_TONE);
    log(ringTones.value.name + ", " + ringTones.value.resources);
  }

  onTextEditClicked() {
    isItemClicked.value = !isItemClicked.value;
  }

  onItemAlarmClicked(int index) {
    Get.defaultDialog(
        title: 'Chỉnh sửa',
        content: const TextField(decoration: InputDecoration(
          hintText: 'Nhập mốc thời gian mới',
          border: OutlineInputBorder(),
        ),),
        confirm: const Text(
          'OK',
          style: TextStyle(color: Colors.blue, fontSize: 16.0),
        ),
        cancel: const Text(
          'Huỷ',
          style: TextStyle(color: Colors.grey, fontSize: 16.0),
        ),
        onCancel: () => Get.back(),
        onConfirm: () {
          updateAlarm(index);
        });
  }

  updateAlarm(int index) {
    alarm.value = alarmList[index];
    boxes.putAt(index, alarm.value);
    getListAlarm();
  }

  showBottomSheet() {
    Get.bottomSheet(
      CreateAlarmWidget(
        alarm: alarm.value,
      ),
      isDismissible: false,
      backgroundColor: Colors.white,
    );
  }

  void scheduleAlarm(Alarm alarm) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
      'alarm_notification',
      'alarm_notification',
      icon: 'flutter_assistant',
      largeIcon: DrawableResourceAndroidBitmap('flutter_assistant'),
    );

    var iOSPlatformChannelSpecifics = const IOSNotificationDetails(
        presentAlert: true, presentBadge: true, presentSound: true);
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    var times = alarm.time.split(":");
    int hour = int.parse(times[0]);
    int minute = int.parse(times[1]);
    await flutterLocalNotificationsPlugin.schedule(
        0,
        'Thông báo',
        'Đã đến giờ hẹn ${alarm.time}',
        DateTime.now().add(Duration(minutes: minute, hours: hour)),
        platformChannelSpecifics);
  }

  startServiceInPlatform(Alarm alarm) async {
    if (Platform.isAndroid) {
      var methodChannel =
          const MethodChannel('com.phucnguyen.flutter_assistant');
      String result =
          await methodChannel.invokeMethod('startAlarmService', alarm);
      debugPrint(result);
    } else if (Platform.isIOS) {}
  }
}
