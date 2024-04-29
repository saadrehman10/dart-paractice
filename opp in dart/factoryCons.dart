class Shopes {
  String? name;
  String? product;
  String? address;
  int? _sellerCode;

  Shopes._internal(this.name, this.product, this.address);

  factory Shopes(String name, String product, String area) {
    if (area == "south") {
      throw Exception('We dont operate there ');
    } else if (area == 'north') {
      print('We operate there');
      return Shopes._internal(name, product, area);
    } else if (area == 'west') {
      throw Exception('We dont operate there ');
    } else if (area == 'east') {
      throw Exception('We dont operate there ');
    }
    return Shopes._internal(name, product, null);
  }

  int get sellerCode => _sellerCode!;
  set sellerCode(int value) => _sellerCode = value;

  void displayShopInfo() {
    print("Name: $name");
    print("Product: $product");
    print("Address: $address");
    print('${_sellerCode != null? '${_sellerCode}':'\n'}');
  }
}

void main() {
  Shopes shop1 = new Shopes('shpeA', 'shoes', 'north');
}
