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
    this.dispalyCar();
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
    this.displaySuvDetails();
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

void main() {
  // SuperCar lambo = SuperCar();
  // lambo.dispalyCar();
  // Car cultus = Car('cultus', 2004, 'ATS-1 92', 'suzuki');
  // cultus.dispalyCar();
  // Gari civic = Gari();
  // civic.dispalyCar();
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

  FeatuerClass2 car3 = new FeatuerClass2();

  car3.name = 'Hiroof';
  car3.year = 1900;
  car3.made = 'Suzuki';
  car3.licenceNo = 'USA-999';
  car3.seats = 8;
  car3.fuleAvg = 22.3;
  car3.isSportsEdition = false;
  car3.ac = false;
  car3.butterflyDoor = true;
  car3.fwd = true;
  car3.sunroof = false;
  car3.random = 'third inhreantance class property';
  car3.numramdom = 4834823084238498;
  car3.diplayFE2();
}
