//Q1 writer a dart programe to create class laptop with properties [id,name,ram] and create 3 objects of of it and print all details

class Laptop {
  int? id;
  String? name;
  double? ram;

  Laptop(this.id, this.name, this.ram);
  void dispaly() {
    print('Laptop id : $this.id');
    print('Laptop name : $this.name');
    print('Laptop ram : $this.ram');
  }
}

void main() {}
