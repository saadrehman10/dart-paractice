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

mixin catanimal on Animal {
  @override
  void dislayAnimal() {
    print('the cat name is ${this.name}');
    print('the cat color is ${this.color}');
    print('the cat id is ${this.id}');
  }
}

class Cat extends Animal with catanimal {
  String? sound;
  Cat(String? name, String? color, int? id, this.sound)
      : super(id, name, color);

  @override
  void dislayAnimal() {
    super.dislayAnimal();
    print('the cat sound like $sound');
  }
}
//Q5. Write a dart program to create a  class Camera with private properties [id, brand, color, price] . Create getter and setter and set all values. Also,create 3 objects if it and print all details.

class Camera {
  int? _id;
  String? _brand;
  String? _color;
  double? _price;

  set id(int value) => value.toString().length == 7
      ? _id = value
      : throw Exception('he value lengthis not 7');
  set color(String value) => _color = value;
  set brandprice(List<dynamic> list) {
    _brand = list[0];
    _price = list[1];
  }

  int get id => this._id!;
  String get color => this._color!;
  List<dynamic> get brandprice => [this._brand, this._price];

  void dispay() {
    print(
        'The id for this camera is ${this._id} in ${this._color} color in only ${this._price} of ${this._brand} manifactor');
  }
}
// Q6.Create an interfce call Bottle and add a methoed to it called open(); create a class called CokeBottle and implement the Bottle and print the message 'Coke bottle is opened' . Add a factory constructor to Bottle and return the object of cokeBottle instantiate CokeBottle using the factory constructor and call teh open () on the object .

abstract class Bottle {
  factory Bottle(hello) => CokeBottle(hello);
  void open() {}
}

class CokeBottle implements Bottle {
  String? hello;
  CokeBottle(this.hello);

  @override
  void open() {
    print('${this.hello}Coke bottle is opened');
  }
}

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

  // print(gender.values);

  // Cat cat1 = new Cat('mars', 'brown', 33, 'meow');
  // cat1.dislayAnimal();
  // Camera cam1 = new Camera();
  // cam1.id = 2233222;
  // cam1.color = 'black';
  // cam1.brandprice = ['canon', 70000.0];
  // cam1.dispay();

  Bottle bottle = Bottle('helo');
  bottle.open();
}
