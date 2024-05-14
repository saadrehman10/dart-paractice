import 'dart:isolate';

Future<List<String>> getname() {
  return Future.delayed(Duration(seconds: 2), () => ['saad']);
}
void getData() {
  String data =  middleFunction.then((value) => value);
  print(data);
}

Future<String> middleFunction(){
  return Future.delayed(Duration(seconds:2), ()=> "Hello");
}
void main()  {
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
  // Future.delayed(Duration(seconds: 4), () => print('hello world'));

  // print('future befoe');
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
   print("Start");
  getData();
  print("End");
//   print(getname());
//   bool temp = true;

//   getname().then((value) {
//       print(value[0]);
//       temp = false;
//     });
 }
