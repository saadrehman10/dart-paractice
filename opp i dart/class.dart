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

class Camera {
  String? brandName;
  String? color;
  String? megapixel;
  String? display;
  String printDetail() {
    return 'The brand of this camera is $brandName\nThe color of the camera is $color\nThe camera has a $megapixel senser\nAnd has a $display inches diplay';
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
  Camera xz50Tmpro = Camera();
  xz50Tmpro.brandName = 'Canon';
  xz50Tmpro.color = 'Black';
  xz50Tmpro.megapixel = '51';
  xz50Tmpro.display = '3.2';
  print(xz50Tmpro.printDetail());
}
