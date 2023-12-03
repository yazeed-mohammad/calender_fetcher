/// created by: yazeed nasrullah
/// email: yazeed.mohm97@gmail.com

class Day {
  int id = 0;
  String name = '';
  int value = 0;
  bool isSelected = false;
  bool isToday = false;
  dynamic data;

  Day(this.id, this.name, this.value, this.isSelected, this.isToday, {this.data});
}
