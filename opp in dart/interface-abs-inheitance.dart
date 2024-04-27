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
    
  }
}

void main() {}
