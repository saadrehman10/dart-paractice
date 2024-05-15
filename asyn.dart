import 'dart:isolate';

Future<List<String>> getname() {
  return Future.delayed(Duration(seconds: 2), () => ['saad']);
}

void getData() {
  var data = middleFunction().then((value) => value);
  print(data);
}

void getData2() {
  var data = middleFunction();
  print(data);
}

void getData3() async {
  var data = await middleFunction();
  print(data);
}

Future<String> middleFunction() {
  return Future.delayed(Duration(seconds: 3), () => "Hello");
}

void main() {
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
  // Future.delayed(Duration(seconds: 4), () => print('hello world'));

  // print('future befoe');
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
//   print(getname());
//   bool temp = true;

//   getname().then((value) {
//       print(value[0]);
//       temp = false;
//     });
  print('----');
  print("Start");
  getData();
  print("End");
  print('----');
  print('----');
  print("Start");
  getData2();
  print("End");
  print('----');
  print('----');
  print("Start");
  getData3();
  print("End");
  print('----');
}
