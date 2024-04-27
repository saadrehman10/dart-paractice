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
    List<String> nums = '01234567890'.split('');
    double area = 0.0;
    bool isNum (String no) => nums.contains(no) ;

    for (int i = 0; i <= formula.length; i++) {
      if (char.contains(formula[i])) {
        switch (formula[i]) {
          case '*':
            if (){}
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
            print('invalid input');
        }
      }
    }
  }

  void displayShapeDetails() {
    print('$shapeName ');
  }
}

void main() {}
