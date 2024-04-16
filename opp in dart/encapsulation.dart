//Encapsulation
class Person {
  String? _name;
  int? _age;
  String? _cast;

  Person(this._name, this._age, this._cast);
  void display() {
    print('$_name $_age $_cast');
  }
}

void main() {
  Person person1 = new Person("John Doe", 30, "Actor");
  Person person2 = new Person("Jane Smith", 45, null);

  person1.display();
  person2.display();

  print(person1._age);
}
