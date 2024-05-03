class Patient {
  String? name;
  String? diagnostic;
  int? _ptCode;

  Patient(this.name, this.diagnostic);
  Patient._named(this.name, this.diagnostic);
  factory Patient.named(String? name, String? diagnostic) {
    if(){
      return Patient._named(name, diagnostic);
    }else{
      throw Exception('Wrong input detalis');
    }
  }
}

void main() {}
