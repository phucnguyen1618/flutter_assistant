import 'package:flutter_assistant/modules/alarmtone/view/alarm_tone_page.dart';
import 'package:flutter_assistant/modules/health/view/health_monitoring_page.dart';
import 'package:flutter_assistant/modules/infor/view/information_page.dart';
import 'package:flutter_assistant/modules/spending/view/spending_management_page.dart';
import 'package:flutter_assistant/modules/time/view/planning_page.dart';
import 'package:flutter_assistant/modules/time/view/time_management_page.dart';
import 'package:flutter_assistant/routes/app_routes.dart';
import 'package:get/get.dart';

final routePages = [
  GetPage(name: Routes.TIME, page: () => const TimeManagementPage()),
  GetPage(name: Routes.SPENDING, page: () => const SpendingManagementPage()),
  GetPage(name: Routes.ALARM_TONE, page: () => const AlarmTonePage()),
  GetPage(name: Routes.INFORMATION, page: () => const InformationPage()),
  GetPage(name: Routes.HEALTH, page: () => const HealthMonitoringPage()),
  GetPage(name: Routes.PLANNING, page: () => const PlanningPage()),
];