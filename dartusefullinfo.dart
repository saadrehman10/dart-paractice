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
  print(date.runtimeType);
  var date2 = DateTime.now();
  print(date.runtimeType);
  Person obj = new Person('Saad');
  print(obj.getvalue);
}
