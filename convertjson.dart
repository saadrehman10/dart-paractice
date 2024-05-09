import 'dart:convert';
import 'dart:math';

class nullValeus {
  String? hello;
  List<int?>? newword;

  void printAddress(String? address) {
    print(address);
  }
}

void main() {
  // nullValeus obj1 = new nullValeus();
  // obj1.newword = obj1.newword ?? [1, 234, null, null, 32];
  // List<int?> items = [1, 2, null, 4];
  // print(items);
  // obj1.printAddress(null);
  Random ram = Random();
  var obj = [1, null];
  var a = ram.nextInt(2);

  print(obj[a-1] ?? 'its null');
}
