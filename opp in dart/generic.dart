class Someone {
  String? name;
  String? dob;
  int? age;

  Someone._internal(this.name, this.dob, [this.age]);
  factory Someone(String? name, String? dob) {
    List<String> year = dob!.split('/');
    int? newDob;
    for (int i = 0; i < year.length; i++) {
      year[i].length == 4 ? newDob = int.parse(year[i]) : null;
    }
    newDob = 2024 - newDob!;
    return Someone._internal(name, dob, newDob);
  }
  void displaySomeone() {
    print('$name is $age years old');
  }
}

mixin mx1 on Someone {
  String? gender;
  @override
  void displaySomeone() {
    print('$name is $age years old ${gender! == 'Male' ? 'he' : 'She'}');
  }
}

class AnotherOne extends Someone with mx1 {
  String? gender;
  AnotherOne._internal(String? name, String? dob, String? gender)
      : super._internal(name, dob);
  factory AnotherOne(String? name, String? dob, String? gender) {
    if (gender != 'Male' || gender != 'Female')
      throw Exception('no gender exist');
    else {
      return AnotherOne._internal(name, dob, gender);
    }
  }
}

void main() {
  Someone s = new Someone('John', '1990/01/01');
  print(s.age);
  AnotherOne perosn = new AnotherOne('smith', '01/01/1992','Mail');
  perosn.displaySomeone();
}
