class Person {
  String? firstName;
  String? lastName;
  int? dob;
  int? _cnicNO;
  int count = 0;
  static int? count2 = 0 ;

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

  void countUpdate() {
    count++;
  }

  void countUpdate2() {
    count2++;
  }

  void showPersonalInfo() {
    print("Name: ${this.fullName}");
    print("Age : ${this.calulateAge()}");
    print('${_cnicNO != null ? 'CNIC NO: ${this.cnicNO}' : ''}');
  }
}

void main() {


  
}
