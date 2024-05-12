import 'dart:isolate';

Future<List<String>> getname() {
  return Future.value(['']);
}

void main() {
  Future.delayed(Duration(seconds: 3), () => print('hello world'));
  Future.delayed(Duration(seconds: 4), () => print('hello world'));

  print('future befoe');
  Future.delayed(Duration(seconds: 3), () => print('hello world'));
}
