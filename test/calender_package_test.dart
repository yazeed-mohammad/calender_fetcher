import 'package:calender_fetcher/calender/controllers/CalenderController.dart';
import 'package:calender_fetcher/calender/models/Year.dart';

void main() {
  CalenderController calenderController = CalenderController.getInstance();
  List<Year> years = calenderController.getFullCalender(DateTime.now().year, DateTime.now().year + 10);

  years.map((e) => e.data = <int>[e.value]).toList();
  years.map((e) => e.months.map((e) => e.data = <int>[e.value]).toList()).toList();
  years.map((e) => e.months.map((e) => e.days.map((e) => e.data = <String>[e.name]).toList()).toList()).toList();
  years.map((e) => e.months.map((e) => e.days.map((e) => print(e.data)).toList()).toList()).toList();
  years.map((e) => e.months.map((e) => print(e.data)).toList()).toList();
  years.map((e) => print(e.data)).toList();
}
