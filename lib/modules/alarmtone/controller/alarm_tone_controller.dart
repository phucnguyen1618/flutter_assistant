import 'package:flutter_assistant/models/ringtones.dart';
import 'package:get/get.dart';

class AlarmToneController extends GetxController {

  var listRingTones = <RingTones>[
    RingTones('Radar', 'radar.mp3'),
    RingTones('Gió', 'wind.mp3'),
    RingTones('Mặt trời', 'sun.mp3'),
    RingTones('Mưa', 'rain.mp3'),
    RingTones('Thiên nhiên', 'natural.mp3'),
    RingTones('Đồi núi', 'mountain.mp3'),
    RingTones('Cây cối', 'tree.mp3'),
    RingTones('Hoa lá', 'flower.mp3'),
    RingTones('Sông nước', 'river.mp3'),
    RingTones('Ánh đèn', 'light.mp3'),
    RingTones('Đường phố', 'city.mp3'),
    RingTones('Xe cộ', 'car.mp3'),
  ].obs;



}