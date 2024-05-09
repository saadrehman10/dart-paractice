import 'dart:convert';

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
   
  var obj = null;
  var obj1 = 1;
  print(obj ?? 'its null');
  print(obj1 ?? 'its null');

}
