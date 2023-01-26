import 'package:calender_fetcher/calender/models/Day.dart';
import 'package:calender_fetcher/calender/models/Month.dart';
import 'package:calender_fetcher/calender/models/Year.dart';

/// created by: yazeed nasrullah
/// email: yazeed.mohm97@gmail.com

class Date {
  List<Year>? years = [];
  List<Month>? months = [];
  List<List<Day>>? days = [];

  Date(this.years, this.months, this.days);
}
