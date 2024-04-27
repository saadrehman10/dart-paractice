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
    List<String> char =  '*/+-=(){}[]'.split('');
    for (int i = 0; i <= formula.length; i++) {
      if (char.contains(formula[i])) {
        switch(formula[i]){
          case '*':

        }
      }
    }
  }

  void displayShapeDetails() {
    print('$shapeName ');
  }
}

void main() {}
