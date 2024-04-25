// import 'dart:io';
// import 'dart:math';
// import 'dart:collection';

class Person {
  String? firstName;
  String? lastName;
  int? dob;
  int? _cnicNO;
  int count = 0;
  static int count2 = 0;

  Person.no();
  Person(this.firstName, this.lastName, this.dob);
  Person.allAttributes(this.firstName, this.lastName, this.dob, this._cnicNO);
  Person.cons2({this.firstName, this.lastName, this.dob});

  set cincNO(int number) => number.toString().length == 14
      ? _cnicNO = number
      : print('The cnic Length is invalid');
  int get cnicNO => _cnicNO!;
  String get fullName => '$firstName $lastName';

  int calulateAge() {
    return this.dob != null ? 2024 - this.dob! : -1;
  }

  void countUpdate() {
    count++;
  }

  void countUpdate2() {
    count2++;
  }

  void dispalyCount() {
    print('the static count is $count2\nThe non-static count is $count');
  }

  void showPersonalInfo() {
    print("Name: ${this.fullName}");
    print("Age : ${this.calulateAge()}");
    print('${_cnicNO != null ? 'CNIC NO: ${this.cnicNO}' : ''}');
  }
}

class Encryption {
  static String encription(String userinput, int key) {
    var input = userinput.split('');
    int row = input.length % key != 0 ? (input.length ~/ key) + 1 : key;
    List<List<String>> cipherMatrix = [];
    int startIndex = 0;
    int endIndex = (input.length ~/ key);
    for (int i = 1; i <= row; i++) {
      cipherMatrix.add(input.sublist(startIndex, endIndex));
      startIndex = endIndex;
      endIndex += row;
    }
    return cipherMatrix.join();

  }
}

void main() {
  // Person p1 = new Person.no();
  // Person p2 = new Person.no();
  // Person p3 = new Person.no();
  // Person p4 = new Person.no();
  // Person p5 = new Person.no();

  // p1.countUpdate();
  // p1.countUpdate2();
  // p1.dispalyCount();
  // print('----------------------------');
  // p2.countUpdate();
  // p2.countUpdate2();
  // p2.dispalyCount();
  // print('----------------------------');
  // p3.countUpdate();
  // p3.countUpdate2();
  // p3.dispalyCount();
  // print('----------------------------');
  // p4.countUpdate();
  // p4.countUpdate2();
  // p4.dispalyCount();
  // print('----------------------------');
  // p5.countUpdate();
  // p5.countUpdate2();
  // p5.dispalyCount();
  // print('----------------------------');
  //  p1.countUpdate();
  // p1.countUpdate2();
  // p1.dispalyCount();
  // print('----------------------------');
  // p2.countUpdate();
  // p2.countUpdate2();
  // p2.dispalyCount();
  // print('----------------------------');
  // p3.countUpdate();
  // p3.countUpdate2();
  // p3.dispalyCount();
  // print('----------------------------');
  // p4.countUpdate();
  // p4.countUpdate2();
  // p4.dispalyCount();
  // print('----------------------------');
  // p5.countUpdate();
  // p5.countUpdate2();
  // p5.dispalyCount();
  // print('----------------------------');

  // Encryption p = new Encryption(stdin.readLineSync());
  // p.encription() ;

  print(Encryption.encription('hello world', 10));
}
