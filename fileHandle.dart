import 'dart:io';

dynamic input([String? text]) {
  text != null ? print(text) : false;
  try {
    return stdin.readLineSync()!;
  } catch (e) {
    print('Invalid input');
  }
}

void main() {
  // File file = File('test.txt');
  // String contents = file.readAsStringSync();
  // print(contents);
  // print(file.path);
  // print(file.absolute.path);
  // print(file.lengthSync());
  // print(file.lastModifiedSync());
  // print(file.lastAccessedSync());
  // File file1 = File('test.csv');
  // String cont = file1.readAsStringSync();
  // var list = cont.split('\n');
  // for (var i in list) {
  //   print(i);
  // }
  // file.writeAsStringSync('hello');
  // contents = file.readAsStringSync();
  // print(contents);
  // file.writeAsStringSync('This is teh apppended part',mode: FileMode.append);
  // contents = file.readAsStringSync();
  // print(contents);
  // File file = File('student.csv');
  // bool loop = true;
  // while (loop) {
  //   int? opt = int.parse(stdin.readLineSync()!);
  //   switch (opt) {
  //     case 1:
  //       try {
  //         String input = stdin.readLineSync()!;
  //         file.writeAsStringSync(input, mode: FileMode.append);
  //       } catch (e) {
  //         print(e);
  //       }
  //     case 2:
  //       print(file.readAsStringSync());
  //     case 3:
  //       loop = false;
  //     case 4:
  //       file.existsSync() ? file.deleteSync() : print('file dont exitst');
  //   }
  // }

  // var a = "hello";
  // print(a.replaceAll('l','o'));
  // print(a);
  // print(a.codeUnits);
  File file = File('new.txt');
  !file.existsSync() ? file.writeAsStringSync(' ') : null;
  dynamic content = file.readAsStringSync();
  print("The current file content is : \n \t$content");
  String userInput =
      input("Enter the text you wanted to write in the file ").toString();
  file.writeAsStringSync(userInput, mode: FileMode.append);
  content = content.split('');
  content.forEach((e) {
    print("\t $e");
  });
}
