class Patient {
  String? name;
  String? diagnostic;
  int? _ptCode;
  Map<String, dynamic>? ptInfo;

  Patient(this.name, this.diagnostic);
  Patient._named(this.name, this.diagnostic);
  factory Patient.named(String? name, String? diagnostic) {
    if (name != null && diagnostic != null) {
      return Patient._named(name, diagnostic);
    } else {
      throw Exception('Wrong input detalis');
    }
  }

  set ptCode(int? code) => code!.toString().length == 10
      ? _ptCode = code
      : print('worng lenght should be 10');

  int get ptCode => _ptCode!;

  set setptInfo(List<dynamic> history) {
    ptInfo!['name'] = this.name;
    ptInfo!['age'] = history[0].runtimeType == int ? history[0] : null;
    ptInfo!['gender'] = history[1].runtimeType == bool ? history[1] : null;
    ptInfo!['heart_disease'] =
        history[2].runtimeType == bool ? history[2] : null;

    ptInfo!['Diseases_histroy'] =
        history[3].runtimeType == List ? history[3] : null;
  }

  String displayPTinfo() {
    if (this.ptInfo != null) {
      return '${this.name} is ${this.ptInfo!['age']} years old ${this.ptInfo!['heart_disease'] ? '${this.ptInfo!['gender'] == 'male' ? 'he' : 'she'}' : ''}';
    } else {
      return 'ptifo is null';
    }
  }

  List<String> pthisoty() {
    return this.ptInfo!['Diseases_histroy'];
  }
}

class IcuPT extends Patient {
  IcuPT(String? name, String? diagnostic) : super(name, diagnostic);
  void checkpt() {
    print('This Patient is in Intensive care class');
  }

  @override
  String displayPTinfo() {
    return (super.displayPTinfo() + '& Patient is in Intensive care');
  }
}

class CuPt extends Patient implements IcuPT {
  CuPt(String? name, String? diagnostic) : super(name, diagnostic);

  @override
  void checkpt() {
    print('This Patient is in Critical care class');
  }
}

class GeneralPt extends Patient implements IcuPT {
  GeneralPt(String? name, String? diagnostic) : super(name, diagnostic);
  @override
  void checkpt() {
    print('This Patient is in general class');
  }
}

class PtNotes<E> {
  E? notes1;
  PtNotes([this.notes1]);

  E dispalynoteset() {
    return this.notes1!;
  }
}

abstract class Indentify {
  var name;
  Indentify(this.name);
  void display() {
    print(this.name.runtimeType);
  }
}

class random<E> extends Indentify {
  random(E name) : super(name);
  @override
  void display() {
    super.display();
  }
}

void main() {
  // var patient1 = Patient('Alice', 'Flu');
  // var patient2 = Patient('Bob', 'Cold');
  // var patient3 = Patient('Charlie', 'Fever');
  // var patient4 = Patient('Diana', 'Injury');
  // var patient5 = Patient('Ethan', 'Allergy');

  // var icuPatient1 = IcuPT('Fiona', 'Severe Flu');
  // var icuPatient2 = IcuPT('George', 'Severe Cold');
  // var icuPatient3 = IcuPT('Hannah', 'Severe Fever');
  // var icuPatient4 = IcuPT('Ian', 'Severe Injury');
  // var icuPatient5 = IcuPT('Jane', 'Severe Allergy');

  // var cuPatient1 = CuPt('Kyle', 'Critical Flu');
  // var cuPatient2 = CuPt('Liam', 'Critical Cold');
  // var cuPatient3 = CuPt('Mia', 'Critical Fever');
  // var cuPatient4 = CuPt('Noah', 'Critical Injury');
  // var cuPatient5 = CuPt('Olivia', 'Critical Allergy');

  // var generalPatient1 = GeneralPt('Peter', 'Mild Flu');
  // var generalPatient2 = GeneralPt('Quinn', 'Mild Cold');
  // var generalPatient3 = GeneralPt('Rachel', 'Mild Fever');
  // var generalPatient4 = GeneralPt('Steve', 'Mild Injury');
  // var generalPatient5 = GeneralPt('Tina', 'Mild Allergy');

  // // Set patient information
  // patient1.setptInfo = [
  //   30,
  //   true,
  //   false,
  //   ['Flu']
  // ];
  // icuPatient1.setptInfo = [
  //   45,
  //   false,
  //   true,
  //   ['Severe Flu']
  // ];
  // cuPatient1.setptInfo = [
  //   50,
  //   true,
  //   false,
  //   ['Critical Flu']
  // ];
  // generalPatient1.setptInfo = [
  //   28,
  //   false,
  //   false,
  //   ['Mild Flu']
  // ];

  // // Print patient information
  // print(patient1.displayPTinfo());
  // print(icuPatient1.displayPTinfo());
  // icuPatient1.checkpt();
  // print(cuPatient1.displayPTinfo());
  // cuPatient1.checkpt();
  // print(generalPatient1.displayPTinfo());

  // // Print notes
  // var notes1 = PtNotes<String>('Note 1 for Patient');
  // var notes2 = PtNotes<int>(12345);
  // var notes3 = PtNotes<bool>(true);
  // var notes4 = PtNotes<List<String>>(['Diabetes', 'Hypertension']);

  // print(notes1.dispalynoteset());
  // print(notes2.dispalynoteset());
  // print(notes3.dispalynoteset());
  // print(notes4.dispalynoteset());

  random obj1 = new random('name');
  obj1.display();
  random obj2 = new random(1223);
  obj2.display();
  random obj3 = new random(339.00);
  obj3.display();
  random obj4 = new random(['']);
  obj4.display();
  random obj5 = new random({});
  obj5.display();
  random obj6 = new random([]);
  obj6.display();
  random obj7 = new random({'name': 'Saaas'});
  obj7.display();
  random obj8 = new random({'name', 'Saaas',190298.2,223});
  obj8.display();
  random obj9 = new random({'saad', 'amed','delo'});
  obj9.display();}
