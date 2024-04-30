class Shopes {
  String? name;
  String? product;
  String? address;
  int? _sellerCode;

  Shopes._internal(this.name, this.product, this.address);

  factory Shopes(String name, String product, [String? area]) {
    if (area == "south") {
      throw Exception('We dont operate there ');
    } else if (area == 'north') {
      print('We operate there');
      return Shopes._internal(name, product, area);
    } else if (area == 'west') {
      throw Exception('We dont operate there ');
    } else if (area == 'east') {
      throw Exception('We dont operate there ');
    } else {
      return Shopes._internal(name, product, null);
    }
  }

  int get sellerCode => _sellerCode!;
  set sellerCode(int value) => _sellerCode = value;

  void displayShopInfo() {
    print("Name: $name");
    print("Product: $product");
    print("Address: $address");
    print('${_sellerCode != null ? 'Seller Code : ${_sellerCode}\n' : '\n'}');
  }
}
class AbstractFactory {
  String? name;
  bool? isConnected;
  double? yearlyProfit;
  double? netSales;
  double? yaerlyTaxes;
  AbstractFactory._internal(
      this.name, this.isConnected, this.yearlyProfit, this.netSales)
      : yaerlyTaxes = (yearlyProfit! / netSales!) * 100;
  factory AbstractFactory(
      String name, bool isConnected, double yearlyProfit, double netSales) {
    if (yearlyProfit <= 0 || netSales <= 0) {
      print('the yearly profit cant be less than zero ');
      return AbstractFactory._internal(null, null, null, null);
    } else {
      return AbstractFactory._internal(name, isConnected, yearlyProfit, netSales);
    }
  }
}

class ConcreteFactory extends AbstractFactory {
  ConcreteFactory(String name, bool isConnected, double yearlyProfit, double netSales)
      : super._internal(name, isConnected, yearlyProfit, netSales);
}

class Singleton {
 // static variable
 static final Singleton _instance = Singleton._internal();
 
// factory constructor
 factory Singleton() {
   return _instance;
 }
 // private constructor 
 Singleton._internal();
}
class Person {
  // final fields
  final String name;

  // private constructor
  Person._internal(this.name);

  // static _cache field
  static final Map<String, Person> _cache = <String, Person>{};

  // factory constructor
  factory Person(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name]!;
    } else {
      final person = Person._internal(name);
      _cache[name] = person;
      return person;
    }
  }
}
// enum ShapeType
enum ShapeType { circle, rectangle }

// abstract class Shape
abstract class Shape {
  // factory constructor
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.circle:
        return Circle();
      case ShapeType.rectangle:
        return Rectangle();
      default:
        throw 'Invalid shape type';
    }
  }
  // method
  void draw();
}

class Circle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing circle');
  }
}

class Rectangle implements Shape {
  // implement draw method
  @override
  void draw() {
    print('Drawing rectangle');
  }
}
void main() {
  // Shopes shop1 = new Shopes('shpeA', 'shoes', 'north');
  // shop1.sellerCode = 987654;
  // shop1.displayShopInfo();
  // Shopes shop2 = new Shopes('shpeB', 'bags');
  // shop2.displayShopInfo();
  // Shopes shop3 = new Shopes('shp3B', 'cloths');
  // shop3.displayShopInfo();

 ConcreteFactory factory = new ConcreteFactory("ABC Factory", true, 100000, 500000);
  print('Factory name: ${factory.name}');
  print('Yearly profit: ${factory.yearlyProfit}');
  print('Yearly taxes: ${factory.yaerlyTaxes}');
  Singleton obj1 = Singleton();
 Singleton obj2 = Singleton();
 print(obj1.hashCode);
 print(obj2.hashCode);
  final person1 = Person('John');
  final person2 = Person('Harry');
  final person3 = Person('John');

  // hashcode of person1 and person3 are same
  print("Person1 name is : ${person1.name} with hashcode ${person1.hashCode}");
  print("Person2 name is : ${person2.name} with hashcode ${person2.hashCode}");
  print("Person3 name is : ${person3.name} with hashcode ${person3.hashCode}");
  
}
