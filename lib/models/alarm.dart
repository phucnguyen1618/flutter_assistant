import 'package:hive/hive.dart';
part 'alarm.g.dart';

@HiveType(typeId: 0)
class Alarm extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String time;
  @HiveField(2)
  bool isAlarm;

  Alarm(this.id, this.time, this.isAlarm);
}