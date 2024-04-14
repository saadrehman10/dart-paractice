import 'dart:io';

dynamic input(String type, [String? text]) {
  print(text ?? "Input something...");
  try {
    return type == 'i'
        ? int.parse(stdin.readLineSync()!)
        : stdin.readLineSync();
  } catch (e) {
    print('Invalid input');
  }
}

class Person {
  String? name;
  int? age;
  String? address;
  int? phoneNo;
  double? height;
  void printPersonDetail() {
    print(
        'The name of the person in question is $name\Age is $age\nAddress is $address\nPhone no is : +$phoneNo\nHeight is $height');
  }
}

class PrintRandon {
  void printrandon() {
    print('Hello world');
  }
}

class Home {
  String? ownerName;
  String? address;
  var noOfRooms;
  void display() {
    print('The owner names is $ownerName');
    print('The address of the house is $address');
    print('The no of rooms present in the house are $noOfRooms');
  }
}

class Camera {
  String? brandName;
  String? color;
  String? megapixel;
  String? display;
  String printDetail() {
    return 'The brand of this camera is $brandName\nThe color of the camera is $color\nThe camera has a $megapixel senser\nAnd has a $display inches diplay';
  }
}

//classes with constructur
class Student {
  String? name;
  int? age;
  int? grade;
  String? section;

  Student(String name, int age, int grade, String section) {
    print('Constructor is called');
    this.name = name;
    this.grade = grade;
    this.age = age;
    this.section = section;
  }

  void studenStatus() {
    print('The name of the Student is $name');
    print('The age of the Studen is $age');
    print('The current assinged class is $grade $section');
    age! <= 12
        ? print('The student is eligble for the Board exams')
        : print('The student is not eligble for the Board exams');
  }
}

class IntrestRate {
  double? principalAmount;
  double? rateOFitrest;
  double? timePeriod;
  IntrestRate(this.principalAmount, this.rateOFitrest, this.timePeriod);
  IntrestRate.randomconstri(
      this.principalAmount, this.rateOFitrest, this.timePeriod);
  void rateOfInterset() {
    var intrest = ((this.rateOFitrest! * 100.0) /
        (this.principalAmount! * this.timePeriod!));
    print('The intrest rate is $intrest %');
  }
}

class Car {
  String? name;
  String? color;
  int? price;
  Car(this.name, this.color, this.price);
  Car.withoutname(this.color, this.price);

  void display() {
    print(
        'The name of the car is $name & its color is $color in only Rs.$price');
  }
}

void main() {
  // Person saad = Person();
  // saad.name = 'Saad ur Rehman';
  // saad.age = 22;
  // saad.address = 'Pakistan';
  // saad.height = 6.1;
  // saad.printPersonDetail();
  // saad.phoneNo = 923132274337;
  // saad.printPersonDetail();
  // Person Ali = Person();
  // Ali.name = 'Ali Khan';
  // Ali.printPersonDetail();
  // Camera xz50Tmpro = Camera();
  // xz50Tmpro.brandName = 'Canon';
  // xz50Tmpro.color = 'Black';
  // xz50Tmpro.megapixel = '51';
  // xz50Tmpro.display = '3.2';
  // print(xz50Tmpro.printDetail());
  // Home A_100 = Home();
  // A_100.address = 'Pakistan';
  // A_100.noOfRooms = 11;
  // A_100.display();
  // Student ali = Student('Ali', 12, 10, 'A');
  // ali.studenStatus();
  // var car = IntrestRate(55, 44, 55);
  // IntrestRate house = IntrestRate.randomconstri(1, 22, 22);
  // car.rateOfInterset();
  // house.rateOfInterset();
  /* Car car1 = Car('Swift', 'red', 200000);
  car1.display();
  Car car2 = Car.withoutname('siver', 3400883);
  car2.display(); */


}
