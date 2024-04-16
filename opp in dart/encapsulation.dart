//Encapsulation
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

void main() {
  // Person person1 = new Person("John Doe", 30, "Actor");
  // Person person2 = new Person("Jane Smith", 45, null);

  // person1.display();
  // person2.display();

  // print(person1._age);



}
