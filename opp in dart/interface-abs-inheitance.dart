class Shapes {
  String? shapeName;
  String? areaformula;
  double area = 0;
  static int noOfSapes = 0;

  Shapes(this.shapeName, this.areaformula) {
    noOfSapes++;
  }
  void calculateArea() {
    List<String> formula = areaformula!.split('');
    List<String> char = '*/+-=(){}[]'.split('');
    double area = 0.0;
    for (int i = 0; i <= formula.length; i++) {
      if (char.contains(formula[i])) {
        switch (formula[i]) {
          case '*':
            area *= area;
          case '/':
            area /= area;
          case '+':
            area *= area;
          case '-':
            area *= area;
          case '[' || ']':
            area *= area;
          case '{' || '}':
            area *= area;
          case '(' || ')':
            area *= area;
          default:
            print('invalid input ');
        }
      } else if (formula[i] == '12345678890'.split('')) {
        var num = int.parse(formula[i]);
        
      }
    }
  }

  void displayShapeDetails() {
    print('$shapeName ');
  }
}

void main() {}
