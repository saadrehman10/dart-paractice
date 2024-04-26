enum dbnames {
  Mangooes('Mangooes'),
  MsSQL('MsSQL'),
  SQl('SQl');

  final String names;
  const dbnames(this.names);
}

abstract class DatabaseTypes {
  bool? dbisSQl;
  bool? dbisNonSQl;
  String? discription;
  String? nameOfdb;
  int? _code;
  static int checkdbRuns = 0;
  static int noOfdb = 0;

  DatabaseTypes(this.discription, this.nameOfdb, bool? type, [this._code]) {
    type == true
        ? (this.dbisSQl = true, this.dbisNonSQl = false)
        : (this.dbisSQl = false, this.dbisNonSQl = true);
    noOfdb++;
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

  static int dbCheckinintotal() {
    print(checkdbRuns);
    return checkdbRuns;
  }

  int showNumberofDB(props) {
    print(noOfdb);
    print(props);
    return noOfdb;
  }

  void dispalyDetail() {
    print('$nameOfdb db is ${dbisNonSQl! ? 'NonSQl' : 'SQL'}');
    print('Description: '+':\n${discription}');

  }
}

class MySql extends DatabaseTypes {

  MySql(String? descrption, [int? code])
      : super(descrption!, dbnames.MsSQL.names, true, code);

  @override
  void dispalyDetail() {
    super.dispalyDetail();
  }
}

class Mongooes extends DatabaseTypes {
  Mongooes(String? descrption, [int? code])
      : super(descrption!, dbnames.Mangooes.names, false, code);

  @override
  void dispalyDetail() {
    super.dispalyDetail();
  }
}

void main() {
  MySql db1 = new MySql('Data base for an export and import Company');
}
