import 'dart:isolate';

void main() async {
  Future.delayed(Duration(seconds: 3), () => print('hello world'));
  while (true) {
    print('future befoe');
  }
  
}
