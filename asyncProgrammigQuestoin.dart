// async programming helps in performing multipule task like fetch data form the internet & etc
//Future in dart help to delya any tak that you want to executer in future for some reason and helps in asyncroinsation in your code
import 'dart:io';

class Filereader {
  String? contant;
  String fileName;
  Filereader(this.fileName);

  void readfile() async {
    File file = File(this.fileName);
    contant = file.readAsStringSync();
  }

  String? get getContant => contant;
}

void main() {
  // var value = Future.delayed(Duration(seconds: 2), () => 'hello wrold');
  // value.then((value) => print(value));
}
