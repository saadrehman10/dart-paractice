class Shapes {
  String? shapeName;
  String? areaFromula;
  double area = 0;
  static int noOfSapes = 0;

  Shapes(this.shapeName, this.areaFromula) {
    noOfSapes++;
  }
  void calculateArea() {
    List<String> fromula = areaFromula!.split('');
    List<String> char = '1234567890*/+-=(){}[]'.split('');
    for (int i = 0; i <= fromula.length; i++) {
      if (char.contains(fromula[i])) {
        continue;
      } else {
        var num = double.parse(fromula[i]);
        if (i == 0) {
          area += num;
        } else {
          switch (fromula[i - 1]) {
            case '*':
              area *= num;
              break;
            case '/':
              area /= num;
              break;
            case '+':
              area += num;
              break;
            case '-':
              area -= num;
              break;
            default:
              print("Invalid formula");
          }
        }
      }
    }
  }
}

void main() {


  
}
