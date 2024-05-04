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

class generalPt extends Patient implements IcuPT {
  generalPt(String? name, String? diagnostic) : super(name, diagnostic);
  @override
  void checkpt() {
    print('This Patient is in general class');
  }
}

void main() {}
