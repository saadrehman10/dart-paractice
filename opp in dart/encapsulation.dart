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

class World {
  String? _palanetCode;
  String? name;
  int? _planetAge;
  double? distanceFromSun;
  World(this._palanetCode,this.name, this._planetAge, this.distanceFromSun);

  
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
  School abcSchool = new School();
  abcSchool.name = 'ABC School';
  abcSchool.street = '123 ABC St.';
  abcSchool.classes = 8;
  print(abcSchool.classes);
  abcSchool.dispaly();
  School xyzSchool = new School();
  xyzSchool.classes = 20;
  xyzSchool.name = 'xyz Uni';
  xyzSchool.dispaly();
}
