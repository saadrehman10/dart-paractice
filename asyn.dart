import 'dart:isolate';

Future<List<String>> getname() {
  return Future.delayed(Duration(seconds: 2), () => ['saad']);
}

void getData() {
  middleFunction().then((value) => print('0' + value));
}

void getData2() {
  var data = middleFunction();
  print('2' + data.toString());
}

void getData3() async {
  var data = await middleFunction();
  print('3' + data.toString());
}

Future<String> middleFunction() {
  return Future.delayed(Duration(milliseconds: 100), () => "Hello");
}

class Syncronization {
  Syncronization();
  void getname() async {
    try {
      String name = await middleFunction();
      print(name);
    } catch (e) {
      print(e);
    }
  }
}

void main() async{
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
  // Future.delayed(Duration(seconds: 4), () => print('hello world'));

  // print('future befoe');
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
//   print(getname());
//   bool temp = true;

//   getname().then((value) {
//       print(value[0]);
//
//     });
  // print('----');
  // print("Start");
  // getData();
  // print("End");
  // print('----');
  // print('----');
  // print("Start");
  // getData2();
  // print("End");
  // print('----');
  // print('----');
  // print("Start");
  // getData3();
  // print("End");
  // print('----');
  Syncronization obj = new Syncronization();
  obj.getname();
  int i = 0;
  while (i <= 20) {
    await Future.delayed(Duration(milliseconds: 100),() => print('.'));
    i++;
  }
}
