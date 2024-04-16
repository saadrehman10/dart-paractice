// Super Class
class Car {
  String? name;
  String? licenceNo;
  int? year;
  String? made;
  Car(this.name, this.year, this.licenceNo, this.made);
  void dispalyCar() {
    print(
        'The model of the car is $name model $year with licence $licenceNo and manifacrure of the car is $made');
  }
}

class SuperCar extends Car {
  SuperCar() : super('Lambo', 2020, "UAW-223", "Lamborgini");
}

class Gari extends SuperCar {
  Gari();
}

void main() {
  SuperCar lambo = SuperCar();
  lambo.dispalyCar();
  Car cultus = Car('cultus', 2004, 'ATS-1 92', 'suzuki');
  cultus.dispalyCar();
  Gari civic = Gari();
  civic.dispalyCar();
}
