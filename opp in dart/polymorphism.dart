import 'dart:ffi';

class Home {
  String? address;
  double? propertyTax;
  Home(this.address, this.propertyTax);
  void displayFeatures(){
    print('$address has yearly property tax of rs.$propertyTax');

  }
  
}

class Banglos extends Home {
  double? sqfoot;
  Banglos(String address, double propertyTax, this.sqfoot) : super(address, propertyTax);

  @override
  void displayFeatures (){
    print('$address has sqfootage of $sqfoot with yearly tax of rs.$propertyTax ');
  }
}

void main (){
 Banglos house1 = new Banglos('344', 10000.0, 1000);
 house1.displayFeatures();

}