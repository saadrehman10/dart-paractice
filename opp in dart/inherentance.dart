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

// class Gari extends SuperCar {
//   Gari();
// }

void main() {
  // SuperCar lambo = SuperCar();
  // lambo.dispalyCar();
  // Car cultus = Car('cultus', 2004, 'ATS-1 92', 'suzuki');
  // cultus.dispalyCar();
  // Gari civic = Gari();
  // civic.dispalyCar();
  SuperCar car1 = new SuperCar();
  car1.name = 'supra';
  car1.year = 2018;
  car1.made = 'Toyota';
  car1.licenceNo = 'UAE-1000';
  car1.topSpeed = 567;
  car1.yearlyTaxses = 10000;
  car1.displaySuperCarDetails();
  

}
