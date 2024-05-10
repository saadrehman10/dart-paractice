import 'dart:convert';
import 'dart:math';

class nullValeus {
  String? hello;
  List<int?>? newword;
  nullValeus({this.hello});
  void printAddress(String? address) {
    print(address);
  }

  void nullcheker() {
    hello != null ? print('hello') : throw Exception('hello is null');
  }
}


class DataProvider{
    // creating a method stringorNull
    String? get stringorNull => Random().nextBool() ? "Hello" : null;

    // creating a method myMethod
    void myMethod(){
        String? value = stringorNull;
        // checking if value String or not
        if(value is String){
            print("The length of value is ${value.length}");
        }else{
            print("The value is not string.");
        }

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

  // Object? intis = [
  //   1,
  //   2,
  //   34,
  // ];
  // intis is List ? print(intis.length) : null;

  // print(intis.runtimeType);
  nullValeus val = new nullValeus(hello: 'hello world');
  val.nullcheker();
 

   DataProvider().myMethod();
}
