// Super Class
class Car {
  String? name;
  String? licenceNo;
  int? year;
  String? made;
  // Car(this.name, this.year, this.licenceNo, this.made);
  void dispalyCar() {
    print(
        'The model of the car is $name model $year with licence $licenceNo and manifacrure of the car is $made');
  }
}

class SuperCar extends Car {
  // SuperCar() : super('Lambo', 2020, "UAW-223", "Lamborgini");
  double? topSpeed;
  int? yearlyTaxses;
  double fine = 0.0;

  void ticketsCalulations() {
    fine = (topSpeed! / yearlyTaxses!) * 100;
  }

  void displaySuperCarDetails() {
    this.dispalyCar();
    print('with a top speed of $topSpeed  km/h');
  }
}

class Suv extends Car {
  bool? isSportsEdition;
  double? fuleAvg;
  int? seats;

  void displaySuvDetails() {
    super.dispalyCar();
    print(
        'with fule  average of $fuleAvg and ${isSportsEdition == true ? 'it\'s' : 'it\s not'} a sports edition car with $seats seats');
  }
}

class Features extends Suv {
  bool? ac;
  bool? fwd;
  bool? sunroof;
  bool? butterflyDoor;

  void displayFeatures() {
    super.displaySuvDetails();
    print(
        '${ac == true ? 'with Ac' : ''} ,${fwd == true ? 'with FWD' : ''} , ${sunroof == true ? 'with Sunroof' : ''} , ${butterflyDoor == true ? 'with Butterfly Doors' : ''}');
  }
}
// class Gari extends SuperCar {
//   Gari();
// }

class FeatuerClass2 extends Features {
  String? random;
  int? numramdom;
  void diplayFE2() {
    this.displaySuvDetails();
    this.displayFeatures();
    this.dispalyCar();
    print('------');
    print('$random , $numramdom');
  }
}

// inheritace with constructor---------------------------------

class Person {
  String? firstName;
  String? lastName;
  int? dob;
  int? _cnicNO;

  Person(this.firstName, this.lastName, this.dob);
  Person.allAttributes(this.firstName, this.lastName, this.dob, this._cnicNO);
  Person.cons2({this.firstName, this.lastName, this.dob});

  set cincNO(int number) => number.toString().length == 14
      ? _cnicNO = number
      : print('The cnic Length is invalid');
  int get cnicNO => _cnicNO!;
  String get fullName => '$firstName $lastName';

  int calulateAge() {
    return this.dob != null ? 2024 - this.dob! : -1;
  }

  void showPersonalInfo() {
    print("Name: ${this.fullName}");
    print("Age : ${this.calulateAge()}");
    print('${_cnicNO != null ? 'CNIC NO: ${this.cnicNO}' : ''}');
  }
}

class Employee extends Person {
  double? salary;
  String? position;
  int? _employId;

  Employee(
      String firstName, String lastName, int dob, this.salary, this.position)
      : super(firstName, lastName, dob);

  Employee.cons1(String firstName, String LastName)
      : super.cons2(firstName: firstName, lastName: LastName);

      
  set employId(int id) => _employId.toString().length == 8
      ? _employId = id
      : print('Invalid length of Id ');
  int get employId => _employId!;

  void showEmployeeDetails() {
    super.showPersonalInfo();
    print("Salary : Rs. ${this.salary}");
    print('Position : ${this.position}');
    print('${_employId != null ? 'Employee ID: ${this.employId}' : ''}');
  }
}

class Student extends Person {
  String? branch;
  int? grade;
  Student(String firstName, String lastName, int dob, this.branch, this.grade)
      : super(firstName, lastName, dob);

  Student.allAttributes(String firstName, String lastName, int dob, int cnicNO,
      this.branch, this.grade)
      : super.allAttributes(firstName, lastName, dob, cnicNO);

  void showStudentInfo() {
    super.showPersonalInfo();
    print('Branch: $branch');
    print('Grade: $grade');
  }
}

class PrimaryStudent extends Student {
  String? interests;
  PrimaryStudent(String firstName, String lastName, int dob, String branch,
      int grade, this.interests)
      : super(firstName, lastName, dob, branch, grade);

  PrimaryStudent.allAttributes(
    String firstName,
    String lastName,
    int dob,
    int cnicNO,
    String branch,
    int grade,
  ) : super.allAttributes(firstName, lastName, dob, cnicNO, branch, grade);
  bool overAge() => super.calulateAge() < 15 ? true : false;
  void showPrimaryStudentInfo() {
    if (overAge()) {
      showStudentInfo();
      print('Interest : $interests');
    } else {
      print('over age to be an primary Student');
    }
  } //
}
//---------------testing super-----------------

class One {
  String firstvar = 'one';
  void displayone() {
    print(firstvar);
  }
}

class Two extends One {
  String firstvar = 'two';
  
  void displaytwo() {
    print(firstvar);
    print(super.firstvar);
  }
}

class Three extends Two {
  String firstvar = 'three';
  Three(this.firstvar);
  void displaythree() {
    print(firstvar);
    print(super.firstvar);
  }
}

class Four extends Three {
  String firstvar = 'four';
  Four(String firstvar) : super(firstvar);
  void displayfour() {
    print(firstvar);
    print(super.firstvar);
  }
}

void main() {
  // // SuperCar lambo = SuperCar();
  // // lambo.dispalyCar();
  // // Car cultus = Car('cultus', 2004, 'ATS-1 92', 'suzuki');
  // // cultus.dispalyCar();
  // // Gari civic = Gari();
  // // civic.dispalyCar();
  // SuperCar car1 = new SuperCar();
  // car1.name = 'supra';
  // car1.year = 2018;
  // car1.made = 'Toyota';
  // car1.licenceNo = 'UAE-1000';
  // car1.topSpeed = 567;
  // car1.yearlyTaxses = 10000;
  // car1.displaySuperCarDetails();
  // car1.dispalyCar();
  // car1.ticketsCalulations();
  // print(car1.fine);

  // Suv car2 = new Suv();
  // car2.name = 'Hiroof';
  // car2.year = 1900;
  // car2.made = 'Suzuki';
  // car2.licenceNo = 'USA-999';
  // car2.seats = 8;
  // car2.fuleAvg = 22.3;
  // car2.isSportsEdition = false;
  // car2.displaySuvDetails();

  // Features car3 = new Features();

  // car3.name = 'Hiroof';
  // car3.year = 1900;
  // car3.made = 'Suzuki';
  // car3.licenceNo = 'USA-999';
  // car3.seats = 8;
  // car3.fuleAvg = 22.3;
  // car3.isSportsEdition = false;
  // car3.ac = false;
  // car3.butterflyDoor = true;
  // car3.fwd = true;
  // car3.sunroof = false;
  // car3.displayFeatures();

  // // FeatuerClass2 car3 = new FeatuerClass2();

  // car3.name = 'Hiroof';
  // car3.year = 1900;
  // car3.made = 'Suzuki';
  // car3.licenceNo = 'USA-999';
  // car3.seats = 8;
  // car3.fuleAvg = 22.3;
  // car3.isSportsEdition = false;
  // car3.ac = false;
  // car3.butterflyDoor = true;
  // car3.fwd = true;
  // car3.sunroof = false;
  // // car3.random = 'third inhreantance class property';
  // // car3.numramdom = 4834823084238498;
  // // car3.diplayFE2();
  Person person1 = Person('John', 'Smith', 1956);
  person1.cincNO = 42101417051250;
  person1.showPersonalInfo();
  print('-------------------tested Person---------------');

  Student person2 = Student('Saad', 'ur rehman', 2001, 'north', 9);
  person2.showPersonalInfo();
  print('------------------');
  person2.showStudentInfo();
  person2.cincNO = 42101417051250;
  print('------------------');
  person2.showStudentInfo();
  print('------------------');
  PrimaryStudent person3 =
      PrimaryStudent('Saeed', 'desai', 2010, 'south', 3, 'coloring');
  person3.showPrimaryStudentInfo();
  person3.cincNO = 42101417051250;
  print('------------------');
  person3.showPrimaryStudentInfo();
  print('${person3.calulateAge()}');
  print('------------------');
  print('------------------');
  Employee person4 = Employee.cons1('Ahmed', 'Khan');
  person4.showEmployeeDetails();
  print('------------------');

  print('--------for one ----------------');
  One n2 = new One();
  print('------------------');
  n2.displayone();
  print('------------------');

  print('--------for two ----------------');
  Two n3 = new Two();
  print('------------------');
  n3.displayone();
  print('------------------');
  n3.displaytwo();
  print('------------------');

  print('--------for three ----------------');
  Three n4 = new Three('hi');
  print('------------------');
  n4.displayone();
  print('------------------');
  n4.displaytwo();
  print('------------------');
  n4.displaythree();
  print('------------------');

  print('--------for four----------------');
  Four n = new Four('hello');
  print('------------------');
  n.displayone();
  print('------------------');
  n.displaytwo();
  print('------------------');
  n.displaythree();
  print('------------------');
  n.displayfour();
  print('------------------');
}
