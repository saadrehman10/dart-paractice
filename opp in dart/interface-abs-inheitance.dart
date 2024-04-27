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
  ThreeDshape(String? name, String? areaFormula);

  @override
  void formulaArea() {
    print(areaformula);
  }

  @override
  void displayShapeDetails() {
    print('Shape name : $shapeName');
  }

  void thirdfun() {}
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

void main() {}
