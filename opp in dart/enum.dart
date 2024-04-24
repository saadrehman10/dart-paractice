

enum days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

enum names {
  saad('saad'),
  Rabi('Rabi'),
  Ahmed('Ahmed');

  final String text;
  const names(this.text);
}

class Week {
  int? date;
  days? day;
  int? year;

  Week(this.date, this.day, this.year);
  void printDate() {
    print('$date / $day / $year');
  }
}

void main() {
  days day = days.Friday;
  print(day);
  Week randomDay = new Week(11, days.Friday, 2023);
  randomDay.printDate();
  Week firstWeekOfYear = new Week(1, days.Monday, 2023);
  firstWeekOfYear.printDate();

  for (days day in days.values) {
    if (day == days.Monday) {
      continue;
    } else {
      print("Today is ${day})");
    }
  }
  names name1 = names.saad;
  print(name1.text);
  print(names.Ahmed.text);
}
