
class Home {
  String? address;
  double? propertyTax;
  Home(this.address, this.propertyTax);
  @override
  void displayFeatures(){
    print('$address has yearly property tax of rs.$propertyTax');

  }
  
}

class Banglos extends Home {
  double? sqfoot;
  Banglos(String address, double propertyTax, this.sqfoot) : super(address, propertyTax);

  @override
  void displayFeatures (){
    print('$address has sqfootage of $sqfoot with yearly tax of rs.$propertyTax ');
  }
}

// class Circle {
//   double radius;

//   Circle(this.radius);

//   double calculateArea() {
//     return 3.14 * radius * radius;
//   }
// }

// class Rectangle {
//   double length;
//   double width;

//   Rectangle(this.length, this.width);

//   double calculateArea() {
//     return length * width;
//   }
// }

class Shape {
  double calculateArea(){
    return  12.4;
  }
}

class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double calculateArea() {
    return length * width;
  }
}

void main (){
//  Banglos house1 = new Banglos('344', 10000.0, 1000);
//  house1.displayFeatures();

  Circle circle = Circle(5.0);
  Rectangle rectangle = Rectangle(4.0, 6.0);

  print('Area of Circle: ${circle.calculateArea()}');
  print('Area of Rectangle: ${rectangle.calculateArea()}');

}