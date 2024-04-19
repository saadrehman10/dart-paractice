import 'dart:math';

//Encapsulation

// class Car {
//   String? name;
//   int? year;
//   Car(this.name, this.year);
//   void printDetails() {
//     print('$name and the year is $year');
//   }
// }

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
  int? noOfMoons;
  int? noOfSuns;

  Planet(this.name, this.distanceFromSun);
  Planet.noOfNSatalites(
      this.name, this.noOfMoons, this.distanceFromSun, this.noOfSuns);
  Planet.allAtribute(
      this._planetCode, this._planetAge, this.distanceFromSun, this.name);


  double get moonToSunRatio => noOfMoons!/noOfSuns!;


  String get panetageandCode => _planetAge.toString() + _planetCode!;

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


class Company {
  String? name;
  int? startingYear ;
  double? _yearlyProfit;
  double? _yearlyDebt;
  
  Company(this.name, this.startingYear,[this._yearlyDebt, this._yearlyProfit]);

  set yearlyProfit(double amount) => amount < 0 ? print('invalid amount') : _yearlyProfit = amount;  
  set yearlyDebt(double amount) {
    amount < 0.0 ? print('invalid amount') : _yearlyDebt = amount;
  }
  double get yearlyDebt {
    return _yearlyDebt! > 0 ? -1.0 : _yearlyDebt!;
  }
  double get yearlyProfit {
    return _yearlyProfit! > 0 ? -1.0 : _yearlyProfit!;
  }
  Map <String,dynamic> get mapedComanyData {
    return (
      {
        'name': name,
        'Year' : startingYear,
        'YearlyProfit' : _yearlyProfit,
        'YearlyDebt' : _yearlyDebt, 
        }
    );
  }

  dynamic companyStatus (){
    var status = _yearlyProfit! - _yearlyDebt!;
    return status < 0 ? {'Company is in loss', false} : {'You are in profit', true}; 
  }

}

class Car {
  String? name;
  int? year;
  bool? sold;
  String? _carModel;
  
  Car(this.name, this.year,this.sold);
  
  set carModel(String model) => _carModel = model;
  
  String get carModel {
     if (_carModel == null){
       return 'The value is not set';
     } else {return _carModel!;}
  }
  
  void printDetails(){
   print('$name was relaised in $year');    
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

//   Planet earth = Planet('Earth', 4.967 * (pow(10, 9)));
//   earth.PlanetDetails();
//   earth.planetAge = 123442;
//   earth.planetCode = "E";
//   earth.PlanetDetails();

//   Planet mars = Planet.allAtribute('M', 1234552, 459999900000.0, "Mars");
//   mars.checkPlanet();
//   mars.PlanetDetails();
//   mars.planetAge = 11244234234;
//   print(mars.planetAge);

//   Planet jupiter = Planet("Jupiter", 11432600000000.0);
//   jupiter.checkPlanet();
//   jupiter.PlanetDetails();
//   jupiter.planetAge = 123238987867;
//   jupiter.planetCode = 'J';
//   jupiter.checkPlanet();
//   print(jupiter.planetAge);

//   print('------------');
//   print(jupiter.panetageandCode);
//   print(earth.panetageandCode);
//   print(mars.panetageandCode);
//   print('--------');

//   Planet newPlanet001 = Planet.noOfNSatalites('001newEarth', 3, 122232344.0, 2);
//   newPlanet001.planetCode = 'NE';
//   newPlanet001.checkPlanet();
//   newPlanet001.PlanetDetails();
//   newPlanet001._planetAge = 100;
//   newPlanet001.checkPlanet();
//   newPlanet001.PlanetDetails();
//   print('The sun to moon raito is ${newPlanet001.moonToSunRatio}');

//   Company company1 = new Company('Samsung',1919);

// company1.yearlyDebt = 1199.0;
// print(company1.yearlyDebt);
// print(company1._yearlyProfit);
// print(company1.mapedComanyData);
// company1.yearlyProfit = 2000000.0;
// print(company1.mapedComanyData);


// Company company2  = new Company('Apple',1950);


Company company1 = new Company('Samsung',1919);

company1.yearlyDebt = 1199.0;
print(company1.yearlyDebt);
print(company1._yearlyProfit);
print(company1.mapedComanyData);
company1.yearlyProfit = 2000000.0;
print(company1.mapedComanyData);
print(company1.companyStatus());

Company company2  = new Company('Apple',1950);

  


}
