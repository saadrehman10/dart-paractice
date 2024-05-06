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
  static List<dynamic> instances = [];

  House(this.id, this.name, this.price) {
    instances.add([this.id, this.name, this.price]);
  }

  static void housesDetaisl() {
    print(instances);
    for (var house in instances) {
      for (var element in house) {
        print('$element for house');
      }
      print('--------');
    }
  }

  void housesDetaisl2() {
    print(instances);
    for (var house in instances) {
      for (var element in house) {
        print('$element for house');
      }
      print('--------');
    }
  }
}

//Q3. Write a dart program to create an enum class for gender [male, female, others] and print all the values;
enum gender { Male, Female, Others }

//Q4. wirte a dart program to create class Animal with properties [id, name, color] . Create another class call cat and extends it form Animal. Add new properties sound in String,Create object of Cat and print all details
class Animal {
  int? id;
  String? name;
  String? color;

  Animal(this.id, this.name, this.color);

  void dislayAnimal() {
    print('the animal name is ${this.name}');
    print('the animal color is ${this.color}');
    print('the animal id is ${this.id}');

  }
}

class 

void main() {
  // Laptop laptop1 = Laptop(1123, 'samsung cromebook', 8.00);
  // Laptop laptop2 = Laptop(2233, 'Apple mackbook', 4.00);
  // Laptop laptop3 = Laptop(1222, 'Thinkpad', 16.00);
  // laptop3.dispaly();
  // laptop2.dispaly();
  // laptop1.dispaly();
  // House house1 = new House(1, 'Abc house', 224442.2);
  // House house2 = new House(2, 'xyz house', 33234.2);
  // print('!!!!!!!!!!!!!!!!');
  // house2.housesDetaisl2();
  // House house3 = new House(3, 'zmx house', 224.2);
  // print('!!!!!!!!!!!!!!!!');

  // House.housesDetaisl();

  // print('!!!!!!!!!!!!!!!!');
  // house3.housesDetaisl2();

  print(gender.values);
}
