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

  set code(int value) => value.toString().length < 10
      ? _code = value
      : print('Error the value must be smaller than 10');

  // set code(int? value) {
  //   if (value != null && value.toString().length > 10) {
  //     _code = value;
  //   } else {
  //     print('Error: The value must be smaller than 10');
  //   }
  // }

  dynamic getcode() => _code != null ? _code : "Not Set Yet";

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
    print('Description: ' + ':\n${discription}');
  }
}

class MySql extends DatabaseTypes {
  double? dbSize;
  MySql(String? descrption, this.dbSize, [int? code])
      : super(descrption!, dbnames.MsSQL.names, true, code);

  static int dbCheckinintotal() {
    return DatabaseTypes.dbCheckinintotal();
  }

  @override
  void dispalyDetail() {
    super.dispalyDetail();
    if (dbSize != null) print('Size of DB: ${dbSize!.toString()} GB');
  }
}

class Mongooes extends DatabaseTypes {
  double? dbSize;
  Mongooes(String? descrption, this.dbSize, [int? code])
      : super(descrption!, dbnames.Mangooes.names, false, code);

  static int dbCheckinintotal() {
    return DatabaseTypes.dbCheckinintotal();
  }

  @override
  void dispalyDetail() {
    super.dispalyDetail();
    if (dbSize != null) print('Size of DB: ${dbSize!.toString()} GB');
  }
}

class Sql extends DatabaseTypes {
  double? dbSize;
  Sql(String? descrption, this.dbSize, [int? code])
      : super(descrption!, dbnames.SQl.names, true, code);

  static int dbCheckinintotal() {
    return DatabaseTypes.dbCheckinintotal();
  }

  @override
  void dispalyDetail() {
    super.dispalyDetail();
    if (dbSize != null) print('Size of DB: ${dbSize!.toString()} GB');
  }
}

void main() {
  MySql db1 =
      new MySql('Data base for an export and import Company', 88.83, 0001);
  Mongooes db2 = new Mongooes(
      'Data Base for an webside to just store a user data ', 30.883);
  Sql db3 =
      new Sql('Data Base for an supermarket to store inventory ', 1903.339);
  db2.code = 2;
  db3.code = 3;
  print('------------------------');
  db1.showNumberofDB('hello');
  print('------------------------');
  db1.checkdatabase();
  print('------------------------');
  db1.dispalyDetail();
  print('------------------------');
  MySql.dbCheckinintotal();
  print('------------------------');
  print('------------------------');
  print('------------------------');
  db2.showNumberofDB(12456);
  print('------------------------');
  db2.checkdatabase();
  print('------------------------');
  db2.dispalyDetail();
  print('------------------------');
  Mongooes.dbCheckinintotal();
  print('------------------------');
  print('------------------------');
  print('------------------------');
  db3.showNumberofDB('their db');
  print('------------------------');
  db3.checkdatabase();
  print('------------------------');
  db3.dispalyDetail();
  print('------------------------');
  Sql.dbCheckinintotal();
  print('------------------------');
  print('------------------------');
  print(db1.getcode());
  print(db2.getcode());
  print(db3.getcode());
}
