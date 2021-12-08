import 'package:flutter_assistant/models/alarm.dart';
import 'package:flutter_assistant/models/spending.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<Alarm> getAlarms() => Hive.box<Alarm>('alarms');
  static Box<Spending> getExpenses() => Hive.box<Spending>('expenses');
}