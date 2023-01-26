import 'package:calender_fetcher/calender/models/Day.dart';

/// created by: yazeed nasrullah
/// email: yazeed.mohm97@gmail.com

class Month {
  int id = 0;
  String name = '';
  int value = 0;
  List<Day> days;
  bool isSelected = false;
  bool isCurrentMonth = false;

  Month(this.id, this.name, this.value, this.days, this.isSelected, this.isCurrentMonth);
}
