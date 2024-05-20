import 'dart:io';

class Person {
  final String? name;
  static const int? value = null;
  Person(
    this.name,
  );
  set setvaue(props) {value = props}
}

void main() {
  final date = DateTime.now();
  print(date.runtimeType);
  var date2 = DateTime.now();
  print(date.runtimeType);
}
