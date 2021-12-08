import 'package:hive/hive.dart';
part 'spending.g.dart';

@HiveType(typeId: 1)
class Spending extends HiveObject {

  @HiveField(0)
  String idSpending;
  @HiveField(1)
  double moneyNumber;
  @HiveField(2)
  String timeSpending;
  @HiveField(3)
  String description;

  Spending(
      this.idSpending, this.moneyNumber, this.timeSpending, this.description);
}