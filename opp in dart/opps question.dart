//Q1 writer a dart programe to create class laptop with properties [id,name,ram] and create 3 objects of of it and print all details

class Laptop {
  int? id;
  String? name;
  double? ram;

  Laptop(this.id, this.name, this.ram);
  void dispaly() {
    print('Laptop id : ${this.id}');
    print('Laptop name : ${this.name}');
    print('Laptop ram : ${this.ram}GB');
  }
}

// write a programme to create class House with properties [id, name, price]. Create a constructor of it and create 3 objects of it add them to the list and print details.
class House {
  int? id;
  String? name;
  double? price;
  static List<dynamic>? instances;

  House(this.id, this.name, this.price) {
    instances = [this.id, this.name, this.price];
  }

  void housesDetaisl() {
    for (List<dynamic> house in instances!) {
      for (var element in house) {
        print('$element for house');
      }
      print('--------');
    }
  }
}

void main() {
  Laptop laptop1 = Laptop(1123, 'samsung cromebook', 8.00);
  Laptop laptop2 = Laptop(2233, 'Apple mackbook', 4.00);
  Laptop laptop3 = Laptop(1222, 'Thinkpad', 16.00);
  laptop3.dispaly();
  laptop2.dispaly();
  laptop1.dispaly();
}
