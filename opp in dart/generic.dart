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

  set setptHistory(List<dynamic> history) {
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

void main() {
  var patient1 = Patient('Alice', 'Flu');
  var icuPatient1 = IcuPT('Fiona', 'Severe Flu');
  var cuPatient1 = CuPt('Kyle', 'Critical Flu');
  var generalPatient1 = GeneralPt('Peter', 'Mild Flu');
  var notes1 = PtNotes<String>('Note 1 for Patient');
  var notes2 = PtNotes<int>(12345);
  var notes3 = PtNotes<bool>(true);
  var notes4 = PtNotes<List<String>>(['Diabetes', 'Hypertension']);

  print(patient1.displayPTinfo());
  print(icuPatient1.displayPTinfo());
  icuPatient1.checkpt();
  print(cuPatient1.displayPTinfo());
  cuPatient1.checkpt();
  print(generalPatient1.displayPTinfo());
  generalPatient1.checkpt();
  print(notes1.dispalynoteset());
  print(notes2.dispalynoteset());
  print(notes3.dispalynoteset());
  print(notes4.dispalynoteset());
}
