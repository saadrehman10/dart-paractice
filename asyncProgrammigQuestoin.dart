// async programming helps in performing multipule task like fetch data form the internet & etc
//Future in dart help to delya any tak that you want to executer in future for some reason and helps in asyncroinsation in your code

import 'dart:io';

class Filereader {
  String? contant;
  String fileName;
  Filereader(this.fileName);

  void readfile() {
    try {
      File file = File(this.fileName);
      contant = file.readAsStringSync();
    } catch (e) {
      print(e);
    }
  }

  String? get getContant => contant;
}

class Question5 {
  Future<dynamic> func1() async {
    var array = [];
    await Future.delayed(Duration(seconds: 2), () {
      array.add('hello');
    });
    await Future.delayed(Duration(seconds: 2), () {
      array.add('wrold');
    });
    await Future.delayed(Duration(seconds: 2), () {
      array.add('hi');
    });
    await Future.delayed(Duration(seconds: 2), () {
      array.add('i am here');
    });
    return array;
  }
}

class Queston6 {
  Future<int> func(int a, int b) async {
    return await a + b;
  }

  Future<int> func2(int a, int b) async {
    return await Future.delayed(Duration(seconds: 5), () => a + b);
  }
}

class Questoin8 {
  Future<List<String>> func1(List<String> array) async {
    array.sort();
    return await Future.delayed(Duration(seconds: 2), () => array);
  }
}

class Question9 {
  Future<List<int>> func(List<int> array) async {
    List<int> temp = [];
    for (int elements in array) {
      await Future.delayed(Duration(milliseconds: 1000), () => temp.add(elements * 2));
    }
    return temp;
  }
}

void main() async {
  // var value = Future.delayed(Duration(seconds: 2), () => 'hello wrold');
  // value.then((value) => print(value));
  // Filereader file1 = Filereader('./test.csv');
  // file1.readfile();
  // print(file1.getContant);
  // Question5 obj1 = Question5();
  // var a = await obj1.func1();
  // print(a.join());
  // Queston6 obj = Queston6();
  // int a = await obj.func(1, 2);
  // print(a);
  // print(await obj.func2(2, 2));
  // Questoin8 obj = Questoin8();

  // print(await obj.func1(['Saad', 'Saeed', 'Ahmed', 'Wadood']));
  Question9 obj = Question9();
  List<int> temp = await obj.func([
    2,
    3,
    4,
    12,
    5,
    3,
    2,
  ]);
  print(temp);
}
