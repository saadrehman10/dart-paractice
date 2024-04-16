import './encapsulation.dart';

void main() {
  Car mycar = new Car('Toyota', 2000);
  mycar.printDetails();

  Person person3 = Person();
  person3.setAge(10);
  print(person3.getAge());
  person3.display();
  // print(person3._age); not possible because of the sepreate file or libiary  encapsulation.dart but can acces the car
  //so
  print(mycar.name);
}
