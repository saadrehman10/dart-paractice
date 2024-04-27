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
            if (isNum(formula[i-1]) && isNum(formula[i+1]) ){
              area += double.parse(int.parse(formula[i-1]) * int.parse(formula[i+1]));
            } else {
              area *= double.parse(formula[i - 1]);
            }
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
            continue;
        }
      }
    }
  }

  void displayShapeDetails() {
    print('$shapeName ');
  }
}

void main() {}
