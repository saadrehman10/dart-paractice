//Q1 writer a dart programe to create class laptop with properties [id,name,ram] and create 3 objects of of it and print all details

class Laptop {
  int? id;
  String? name;
  double? ram;

  Laptop(this.id, this.name, this.ram);
  void dispaly() {
    print('Laptop id : ${this.id}');
    print('Laptop name : ${this.name}');
    print('Laptop ram : ${this.ram }GB');
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
