class Shapes {
  String? shapeName;
  String? areaformula;
  double area = 0;
  bool? threeD;
  static int noOfSapes = 0;

  Shapes(this.shapeName, this.areaformula, this.threeD) {
    noOfSapes++;
  }
  void formulaArea() {
    print(areaformula);
  }

  void displayShapeDetails() {
    print('Shape name : $shapeName');
  }
}

class ThreeDshape implements Shapes {
  String? shapeName;
  String? areaformula;
  double area = 0;
  bool? threeD;
  ThreeDshape(String? name, String? areaFormula) {
    shapeName = name;
    areaformula = areaFormula;
    threeD = true;
  }

  @override
  void formulaArea() {
    print(areaformula);
  }

  @override
  void displayShapeDetails() {
    print('Shape name: $shapeName');
  }

  void thirdfun() {
    print('Additional method for 3D shape');
  }
}

class TwoD {
  String? shapeName;
  String? areaformula;
  double area = 0;
  bool? threeD;
  TwoD(String? name, String? areaFormula);

  void formulaArea() {
    print(areaformula);
  }

  void displayShapeDetails() {
    print('Shape name : $shapeName');
  }

  void thirdfun() {}
}

class Reactangel implements Shapes, TwoD {
  String? shapeName;
  String? areaformula;
  double area = 0;
  bool? threeD;
  Reactangel(String? name, String? areaFormula);
  @override
  void formulaArea() {
    print(areaformula);
  }

  @override
  void displayShapeDetails() {
    print('Shape name : $shapeName');
  }
   @override
  void thirdfun() {}
}

void main() {
  // Create instances of Shapes
  var circle = Shapes('Circle', 'π * r^2', false);
  var square = Shapes('Square', 'side * side', false);

  // Create instances of ThreeDshape
  var sphere = ThreeDshape('Sphere', '4/3 * π * r^3');
  var cube = ThreeDshape('Cube', 'side^3');

  // Create instances of TwoD
  var triangle = TwoD('Triangle', '0.5 * base * height');
  var rectangle = TwoD('Rectangle', 'length * width');

  // Create instances of Reactangel
  var reactangel1 = Reactangel('Reactangel', 'length * width');
  var reactangel2 = Reactangel('Reactangel', 'length * width');

  // List to store all instances
  var shapesList = [circle, square, sphere, cube, triangle, rectangle, reactangel1, reactangel2];

  // Additional instances to meet the requirement of 10-11 objects
  var hexagon = Shapes('Hexagon', '(3 * sqrt(3) / 2) * side^2', false);
  var cylinder = ThreeDshape('Cylinder', '2 * π * r * (r + h)');
  var ellipse = TwoD('Ellipse', 'π * a * b');

  // Adding new instances to the list
  shapesList.addAll([hexagon, cylinder, ellipse]);

  // Display details for each shape
  // for (var shape in shapesList) {
    
  //   print('Number of Shapes: ${Shapes.noOfSapes}');
  //   print('---------------------------');
  // }

  // Specific method for Reactangel
  reactangel1.thirdfun();
  reactangel2.thirdfun();

  // Specific method for ThreeDshape
  sphere.thirdfun();
  cube.thirdfun();

  // Specific method for TwoD
  triangle.thirdfun();
  rectangle.thirdfun();
}
