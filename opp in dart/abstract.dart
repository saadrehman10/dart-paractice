abstract class DatabaseTypes {
  bool? dbisSQl;
  bool? dbisNonSQl;
  String? discription;
  String? nameOfdb;
  int? _code;
  static int checkdbRuns = 0;

  DatabaseTypes(this.discription, this.nameOfdb, bool? type) {
    type == true
        ? (this.dbisSQl = true, this.dbisNonSQl = false)
        : (this.dbisSQl = false, this.dbisNonSQl = true);
  }

  set code(int value) =>
      value > 10 ? _code = value : 'Error the value must be smaller than 10';
  int get code => _code!;

  void checkdatabase() {
    checkdbRuns++;
    dbisSQl!
        ? print('Your data base is SQL')
        : print('Your data base is not SQL');
  }

  static void dbCheckinintotal() {
    print(checkdbRuns);
  }
  
}

void main() {}
