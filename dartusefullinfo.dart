import 'dart:io';

class Person {
  final String? name;
  static const int? value = null;
  Person(
    this.name,
  );
  int? get getvalue => value;
}

void main() {
  final date = DateTime.now();
  print(date);
  var date2 = DateTime.now();
  print(date2.runtimeType);
  Person obj = new Person('Saad');
  print(obj.getvalue);


  String myDateInString = "2022-05-01";
  DateTime myConvertedDate = DateTime.parse(myDateInString);
  print("Year is " + myConvertedDate.year.toString());
  print("Month is " + myConvertedDate.month.toString());
  print("Day is " + myConvertedDate.day.toString());
}
