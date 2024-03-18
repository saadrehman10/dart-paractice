import 'dart:io';

void main() {
  File file = File('test.txt');
  String contents = file.readAsStringSync();
  print(contents);
  print(file.path);
  print(file.absolute.path);
  print(file.lengthSync());
  print(file.lastModifiedSync());
  print(file.lastAccessedSync());
  File file1 = File('test.csv');
  String cont = file1.readAsStringSync();
  var list = cont.split('\n');
  for (var i in list) {
    print(i);
  }
}
