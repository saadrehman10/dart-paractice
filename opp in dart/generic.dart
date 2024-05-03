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
    ptInfo!['age'] = history[0];
    ptInfo![''] = history[1];
  }
}

class IcuPT extends Patient {
  IcuPT(String? name,String? diagnostic) : super(name,diagnostic); 
}

class CuPt extends Patient implements Icpt  {
  CuPt(String? name,String? diagnostic) : super(name,diagnostic); 
}
void main() {}
