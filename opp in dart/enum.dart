enum days { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

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
   Week randomDay = new Week(11,


}
