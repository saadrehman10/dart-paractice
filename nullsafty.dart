// ? is to declar that declared var could be null
import 'dart:math';

int nullchecker(int? value) {
  return value ?? 0;
}

int? randomGenrator() {
  int? value = Random().nextBool() ? 100 : null;
  return value;
}

void main() {
  late String? address;
  address = 'US';
  print(address);
  // How to declar a nullable type var in dart
  String? name;
  var name2;
  dynamic name3 = null;
  int? age;
  print(nullchecker(null));
  print(nullchecker(33));
}
