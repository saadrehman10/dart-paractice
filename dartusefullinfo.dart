// import 'dart:io';

class Person {
  final String? name;
  static const int? value = null;
  Person(
    this.name,
  );
  int? get getvalue => value;
}

void main() {
  // final date = DateTime.now();
  // print(date);
  // var date2 = DateTime.now();
  // print(date2.runtimeType);
  // Person obj = new Person('Saad');
  // print(obj.getvalue);

  // String myDateInString = "2022-05-01";
  // DateTime myConvertedDate = DateTime.parse(myDateInString);
  // print("Year is " + myConvertedDate.year.toString());
  // print("Month is " + myConvertedDate.month.toString());
  // print("Day is " + myConvertedDate.day.toString());
  // print('=======');
  // DateTime myBirthday = DateTime.parse("1997-05-14");
  // myBirthday = myBirthday.add(Duration(days: 1));
  // print("Year is " + myBirthday.year.toString());
  // print("Month is " + myBirthday.month.toString());
  // print("Day is " + myBirthday.day.toString());
  // print('=======');

  //  DateTime myBirthday2 = DateTime.parse("1997-05-14");
  // DateTime today = DateTime.now();
  // Duration diff = today.difference(myBirthday2);
  // print("Difference in days: " + diff.inDays.toString());
  // print("Difference in hours: " + diff.inHours.toString());
  // print("Difference in minutes: " + diff.inMinutes.toString());
  // print("Difference in seconds: " + diff.inSeconds.toString());
  // print("Difference in milliseconds: " + diff.inMilliseconds.toString());
  // print("Difference in microseconds: " + diff.inMicroseconds.toString());

  // var date = DateTime.now();
  // print(date.year);
  // print(date.second);
  // print(date.microsecond);
  // print(date.day);
  // print(date.hour);
  // print(date.minute);
  // print(date.timeZoneName);
  // print(date.weekday);
  // print(date.timeZoneOffset);

  // var date = DateTime.parse('24502-04-99 10:33:19');
  // print(date.runtimeType);
  // print(date);
  // String datetime = DateTime.now().toString();
  // print(datetime);
  DateTime date = DateTime.now();
  date.add(Duration(days: 7));
  print('Your pakage will arrive $date');
}
