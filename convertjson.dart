// import 'dart:convert';
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

class DataProvider {
  // creating a method stringorNull
  String? get stringorNull => Random().nextBool() ? "Hello" : null;

  // creating a method myMethod
  void myMethod() {
    String? value = stringorNull;
    // checking if value String or not
    if (value is String) {
      print("The length of value is ${value.length}");
    } else {
      print("The value is not string.");
    }
  }
}

class lateword {
  static int count = 0;
  static dynamic fun1() {
    count++;
    print('This funcis called');
    return 'hello';
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
  // nullValeus val = new nullValeus(hello: 'hello world');
  // val.nullcheker();

  //  DataProvider().myMethod();

  // late var name;
  // name = 'hello world';
  // print(name);
  // late  String? name;
  // late var temp = lateword.fun1();
  // print(lateword.count);
  // var temp2 = lateword.fun1();
  // print(lateword.count);
  // print(temp);
  // try {
  //   final name = null;
  //   print(name);
  // } catch (e) {
  //   print(e.toString());
  // }

  // name = 'hello';
  // print(lateword.count);
  // print(name);

  // Exercies
  // int? age;
  // age = null;
  // print("Age is $age");

  // List<int?> items = [1, 2, null, 4];
  // print(items);

  // String? name;
  // name = null;
  // String name1 = name!;
  // print(name1);

  // List<int?> items1 = [1, 2, null, 4];

  // int firstItem = items1.first!;

  // print(firstItem);

  // int result = returnNullButSometimesNot()!.abs();
  // print(result);

  // int? length = findLength(null);
  // print("The length of the string is $length");

  // String? name;
  // name = null;
  // String name1 = name ?? 'null';
  // print(name1);

  // Object name = "Mark";
  // var nametemp = name as String;
  // print("The length of name is ${nametemp.length}");

   DataProvider1().myMethod();
   Person person = Person();
    person.setName("Mark");
    print(person.name);
}

// int? returnNullButSometimesNot() {
//   return -5;
// }

// int? findLength(String? name) {
//   // add null assertion operator here
//   try {
//     return name!.length;
//   } catch (e) {
//     return null;
//   }
// }
class DataProvider1{
    String? get stringorNull => Random().nextBool() ? "Hello" : null;

    void myMethod(){
        if(stringorNull is String){
            print("The length of value is ${stringorNull!.length}");
        }else{
            print("The value is not string.");
        }

    }
}
class Person{
    late String _name;

    void setName(String name){
        _name = name;
    }

    String get name => _name;
}