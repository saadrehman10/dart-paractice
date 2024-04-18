import 'dart:math';

//Encapsulation

class Car {
  String? name;
  int? year;
  Car(this.name, this.year);
  void printDetails() {
    print('$name and the year is $year');
  }
}

class Person {
  String? _name;
  int? _age;
  String? _cast;

  String getName() {
    return _name!;
  }

  int getAge() {
    return _age!;
  }

  String getCast() {
    return _cast!;
  }

  void setName(String name) {
    this._name = name;
  }

  void setCast(String cast) {
    this._cast = cast;
  }

  void setAge(int age) {
    this._age = age;
  }

  void display() {
    print('$_name $_age $_cast');
  }
}

class Student {
  final _schoolname = 'Abc school';

  String getSchoolName() {
    return _schoolname;
  }
}

class School {
  String? _name;
  String? _street;
  int? _classes;

  set name(String name) => _name = name;
  set street(String street) => _street = street;
  set classes(int cls) => _classes = cls;

  String get name => _name!;
  String get street => _street!;
  int get classes => _classes!;

  void dispaly() {
    print(
        'The School name is $_name on  the Street $_street. It has $_classes classrooms.');
  }
}

class Planet {
  String? _planetCode;
  String? name;
  int? _planetAge;
  double? distanceFromSun;

  Planet(this.name, this.distanceFromSun);
  Planet.allAtribute(
      this._planetCode, this._planetAge, this.distanceFromSun, this.name);

  set planetCode(String code) {
    _planetCode = code;
  }

  set planetAge(int age) {
    _planetAge = age;
  }

  int get planetAge => _planetAge = _planetAge ?? -1;
  String get planetCode =>
      _planetCode = _planetCode ?? 'You are in unknown planet';

  void checkPlanet() {
    _planetAge == null || _planetCode == null
        ? print('You are in an unknown planet')
        : print("Welcome to $name");
  }

  void PlanetDetails() {
    _planetAge == null || _planetCode == null
        ? print('Error: No info is available')
        : print(
            "Welcome to $name\nThe Planet Code is $_planetCode\nThe Planet is $_planetAge years old\nThe planet is $distanceFromSun km far away");
  }
}

void main() {
  // Person person1 = new Person("John Doe", 30, "Actor");
  // Person person2 = new Person("Jane Smith", 45, null);

  // person1.display();
  // person2.display();

  // // print(person1._age);
  // Person person1 = new Person();
  // person1.setName('Saad');
  // person1.setAge(10);
  // person1.setCast('Developer');
  // person1.display();
  // // print(person1._age);// this is not the wirte way because of the encupulation  in OOPs concept
  // print(person1.getCast());
  // Student student1 = new Student();
  // print(student1.getSchoolName());
  // School abcSchool = new School();
  // abcSchool.name = 'ABC School';
  // abcSchool.street = '123 ABC St.';
  // abcSchool.classes = 8;
  // print(abcSchool.classes);
  // abcSchool.dispaly();
  // School xyzSchool = new School();
  // xyzSchool.classes = 20;
  // xyzSchool.name = 'xyz Uni';
  // xyzSchool.dispaly();
  // Planet earth = new Planet('Earth', 4.967 * (pow(10, 9)));
  // earth.PlanetDetails();
  // earth.planetAge = 123442;
  // earth.planetCode = "E";
  // earth.PlanetDetails();

  // Planet mars = new Planet.allAtribute('M', 1234552, 459999900000.0, "Mars");
  // mars.checkPlanet();
  // mars.PlanetDetails();
  // mars.planetAge = 11244234234;
  // print(mars.planetAge);

  Planet earth = Planet('Earth', 4.967 * (pow(10, 9)));
  earth.PlanetDetails();
  earth.planetAge = 123442;
  earth.planetCode = "E";
  earth.PlanetDetails();

  Planet mars = Planet.allAtribute('M', 1234552, 459999900000.0, "Mars");
  mars.checkPlanet();
  mars.PlanetDetails();
  mars.planetAge = 11244234234;
  print(mars.planetAge);
}
