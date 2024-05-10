import 'dart:convert';
import 'dart:math';

class nullValeus {
  String? hello;
  List<int?>? newword;
  nullValeus(this.hello);
  void printAddress(String? address) {
    print(address);
  }
}

void main() {
  // nullValeus obj1 = new nullValeus(null);
  // print(obj1.hello);
  // obj1.newword = obj1.newword ?? [1, 234, null, null, 32];
  // List<int?> items = [1, 2, null, 4];
  // print(items);
  // obj1.printAddress(null);

  // while (true) {
  //   Random ram = Random();
  //   var obj = [0, 1, null];
  //   var a = ram.nextInt(2);
  //   print(obj[a + 1] ?? 'its null');
  // }

//   Object name = "Pratik";
// // print(name.length) will not work because Dart doesn't know that name is a String

// if(name is String) {
// // name promoted from Object to String
//   print("The length of name is ${name.length}");

  Object? intis = [1,2,34,] ;
   intis  is List ? print(intis.length): null;
  
  print(intis.runtimeType);
  
}
