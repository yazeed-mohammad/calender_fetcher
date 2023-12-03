import 'package:calender_fetcher/calender/models/Month.dart';
import 'package:calender_fetcher/calender/models/Day.dart';
import 'package:calender_fetcher/calender/models/Year.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// created by: yazeed nasrullah
/// email: yazeed.mohm97@gmail.com

class CalenderController {
  static CalenderController? _instance;

  static CalenderController getInstance() {
    _instance ??= CalenderController();
    return _instance!;
  }

  final currentYear = DateTime.now().year;
  final currentMonth = DateTime.now().month;
  final currentDay = DateTime.now().day;

  List<Year> getFullCalender(int fromYear, int toYear) {
    return setYears(fromYear, toYear);
  }

  List<Day> getMonthDays(int year, int month) {
    return setDays(year, month);
  }

  List<Year> setYears(int fromYear, int toYear) {
    final years = <Year>[];
    var id = 0;
    for (var i = fromYear; i < toYear; ++i) {
      id = id++;
      years.add(Year(id, i, setMonths(i), false, isCurrentYear(i)));
    }
    return years;
  }

  List<Month> setMonths(int year) {
    final months = <Month>[];
    var id = 0;
    for (var i = 1; i <= 12; ++i) {
      id = ++id;
      months.add(
        Month(
          id,
          DateFormat('MMM').format(DateTime(year, i)),
          DateTime(year, i).month,
          setDays(year, i),
          false,
          isCurrentMonth(year, i),
        ),
      );
    }
    return months;
  }

  List<Day> setDays(int year, int month) {
    final days = <Day>[];
    var id = 0;
    for (var i = 1; i <= DateUtils.getDaysInMonth(year, month); ++i) {
      id = id++;
      days.add(Day(id, DateFormat('EEEE').format(DateTime(year, month, i)), i, false, isToday(year, month, i)));
    }

    return days;
  }

  bool isCurrentYear(int year) {
    return year == currentYear;
  }

  bool isCurrentMonth(int year, int month) {
    return (year == currentYear && month == currentMonth);
  }

  bool isToday(int year, int month, int day) {
    return (year == currentYear && month == currentMonth && day == currentDay);
  }
}

CalenderController calenderController = CalenderController();
