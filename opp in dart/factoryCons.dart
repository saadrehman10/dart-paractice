class Shopes {
  String? name;
  String? product;
  String? address;
  int? _sellerCode;

  factory Shopes(String name, String product, String area) {
    name = name;
    product = product;
    
  }
}

void main() {
  Shopes shop1 = new Shopes('shpeA', 'shoes', '234');
}
