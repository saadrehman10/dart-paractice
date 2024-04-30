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

class Area {
  final int length;
  final int breadth;
  final int area;

  // private constructor
  const Area._internal(this.length, this.breadth) : area = length * breadth;

  // Factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and breadth must be positive");
    }
    // redirect to private constructor
    return Area._internal(length, breadth);
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
  
}
