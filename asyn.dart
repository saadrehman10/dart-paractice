import 'dart:isolate';

Future<List<String>> getname() {
  return Future.delayed(Duration(milliseconds: 500), () => ['saad']);
}

void main() async {
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));
  // Future.delayed(Duration(seconds: 4), () => print('hello world'));

  // print('future befoe');
  // Future.delayed(Duration(seconds: 3), () => print('hello world'));

  print(getname());
  while (true) {
    getname().then((value) {
    print(value[0]);
  });  
  }
  
}
