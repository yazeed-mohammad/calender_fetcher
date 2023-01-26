import 'package:calender_fetcher/calender/models/Month.dart';

/// created by: yazeed nasrullah
/// email: yazeed.mohm97@gmail.com

class Year {
  int id = 0;
  int value = 0;
  List<Month> months;
  bool isSelected = false;
  bool isCurrentYear = false;

  Year(this.id, this.value, this.months, this.isSelected, this.isCurrentYear);
}
