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

void main() {
  Person saad = Person();
  saad.name = 'Saad ur Rehman';
  saad.age = 22;
  saad.address = 'Pakistan';
  saad.height = 6.1;
  saad.printPersonDetail();
  saad.phoneNo = 923132274337;
  saad.printPersonDetail();
  Person Ali = Person();
  Ali.name = 'Ali Khan';
  Ali.printPersonDetail();
}
