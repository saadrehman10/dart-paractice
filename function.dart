import "dart:io";
import 'dart:math';

void printsome() {
  print("hello word");
}

num numberAdd(num a, num b) {
  var c = stdin.readByteSync;
  print(c);
  return (a + b);
}

void add() {
  print(numberAdd(10, 77));
}

void shapeRectangle(int width, int height) {
  for (int i = 0; i < height; i++) {
    var line = [];
    for (int j = 0; j < width; j++) {
      line.add("*");
    }
    print(line.join());
  }
}

String shapeRectangleReturn(int width, int height) {
  var shape = [];
  for (int i = 0; i < height; i++) {
    var line = [];
    for (int j = 0; j < width; j++) {
      line.add("*");
    }
    shape.add(line.join());
    shape.add("\n");
  }
  return shape.join();
}

void typeChecker(String a, b, int c, var d, hello, bool g,
    [String e = " hello", var f = 1]) {
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);
  print(e.runtimeType);
  print(e);
  print(f.runtimeType);
  print(f);
  print(g.runtimeType);
  print(hello.runtimeType);
}

void typeCheckerNull(c, [a, var b]) {
  print(a.runtimeType);
  print(b.runtimeType);
}

void typeCheckerSet(int a, {int? b, required bool? c, Set<String>? d, var e}) {
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);
  print(e.runtimeType);
}

Function hellow() {
  print("hellow");
  return () {};
}

/* practice qs  */
void evenNO(int start, int ends) {
  for (int i = start; i <= ends; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

void name(name) {
  print('Hello $name');
}

String randomPasswords(int length) {
  List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];
  String password = '';
  for (int i = 0; i < length; i++) {
    if (i >= Random().nextInt(length)) {
      int letterIndexs = Random().nextInt(25);
      password = password + letters[letterIndexs];
    } else {
      String numbersIndexs = Random().nextInt(9).toString();
      password = password + numbersIndexs;
    }
    ;
  }
  return password;
}

String randomPassword(int length) {
  const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
  final StringBuffer password = StringBuffer();
  final Random rnd = Random();

  for (int i = 0; i < length; i++) {
    password.write(chars[rnd.nextInt(chars.length)]);
  }

  return password.toString();
}

num areaOfACircule(int r) {
  num area = pi * r * r;
  return area;
}

String reverseString(String str) {
  return str.split("").reversed.join();
}

num power(int number, int powerOfNumber) {
  if (powerOfNumber == 0) {
    return 1;
  } else if (powerOfNumber < 0) {
    int no = number;
    for (int i = 1; i < -powerOfNumber; i++) {
      number = number * no;
    }
    return 1 / number;
  } else if (powerOfNumber == 1) {
    return number;
  } else if (powerOfNumber != 1) {
    int no = number;
    for (int i = 1; i < powerOfNumber; i++) {
      number = number * no;
    }
    return number;
  } else {
    return 0;
  }
}

num power1(int number, int exponent) {
  if (exponent == 0) {
    return 1;
  }
  if (exponent < 0) {
    return 1 / power1(number, -exponent);
  }
  num result = 1;
  for (int i = 0; i < exponent; i++) {
    result *= number;
  }
  return result;
}

void main() {
  // int fun1() {
  //   void fun2() {
  //     print("Hello");
  //   }

  //   fun2;
  //   fun2();
  //   return 0;
  // }
  // print(fun1.runtimeType);
  // print(fun1());

  // printsome();
  // print(numberAdd(10, 10.2));
  // add();
  // int height = int.parse(stdin.readLineSync()!);
  // int width = int.parse(stdin.readLineSync()!);
  // var a = shapeRectangleReturn(width, height);
  // print(a);
  // typeChecker("srff", 8.334, 2, [2, 3, 4], {3, "thind"}, true, "ello", "new");
  // typeCheckerNull("hello",{null,"world"});
  // typeCheckerSet(1, b: 4, d: {"hello"}, c: true, e: [5]);
  // typeCheckerSet(1, c: true);
  // var c = () {
  //   var a = 10;
  //   return a;
  // };
  // print(c);
  // print(c());

  // for (int i = 0; i < 100000; i++) {
  //   for (int j = 0; j < 100000; j++) {
  //     print("$i * $j = ${j * i}");
  //   }
  // }
  // (int a , b , c){
  //    a += 1;
  //    print(a);
  // };
  // List<String> fruits = ["apple", "banana", "coconut", "pineapple"];
  // fruits.forEach((element) {
  //   print(element[0].toUpperCase() + element.substring(1));
  // });
  // var cube = (elemetn) {
  //   return elemetn * elemetn * elemetn;
  // };
  // print(cube(3));
  // Function p = () {
  //   print("helow");
  // };
  // // p();
  // int sum(num1, num2) => num1 + num2;

  // print(sum(7, 9));

  // String greeting() => 'hellow';
  // print(greeting());

  // print(pi);
  // print(e);
  // print(unicodeBomCharacterRune);
  // var power = pow(2, 2);
  // print(power);
  // var a = cos(2 / 4);
  // print(a);
  // print(cos(pi) == 3);
  // print(max(1, 1000) == 1000);
  // print(min(1, -1000) == -1000);
  // var random = Random();
  // // print(random.nextInt(5));
  // var random = Random.secure();
  // Random ran = new Random();
  // var array = [
  //   'hellow',
  //   3,
  //   4.33,
  //   true,
  //   {1, "new", true},
  //   () => "function",
  // ];

  // print(random.nextInt(1000000000));
  // print(array);
  // var a = 10 + Random().nextInt((100 + 1) - 10);
  // print(a);
  // while(true){
  //  print(-((10 + (Random().nextDouble()*1000).toInt())-1000));

  // }
  // while(true){
  //   var a = (5 + Random().nextInt((10) - 5))*100;
  //   print(a);
  // }

  /* practice questions */
  // name("saad");
  // int start = int.parse(stdin.readLineSync()!);
  // int ends = int.parse(stdin.readLineSync()!);
  // evenNO(start, ends);
  // while (true) {
  //   print(randomPassword(8));
  // }
  // print(areaOfACircule(3));
  // print(reverseString("Hi my name is Saad"));
  // print(power(3, 1));
  // // print(sum(1, 2));
  // num num1 = num.parse(stdin.readLineSync()!);
  // num num2 = num.parse(stdin.readLineSync()!);
  // int num3 = int.parse(stdin.readLineSync()!);

  // print(maximum3(num1, num2, num3));
//   // print(isEven(num3));
//   // print(createUser("Saad", 20));
//   // print(createUser("Saad", 20, false));
//   dynamic variablle = returnchheckfun();
//   print(variablle.runtimeType);
// }

// Map createUser(String name, int age, [bool? isActive = true]) {
//   var user = {
//     'name': "$name",
//     'age': age,
//     'Active': isActive,
//   };
//   return user;
// }

// bool isEven(int number) {
//   return number % 2 == 0 ? true : false;
// }

num maximum3(num1, num2, num3) {
  if (num1 >= num2 && num1 >= num3) {
    return num1;
  } else if (num2 >= num1 && num2 >= num3) {
    return num2;
  } else if (num3 >= num1 && num3 >= num2) {
    return num3;
  } else {
    return 0;
  }
}

// num maximum(num1, num2) {
//   return num1 > num2 ? num1 : num2;
// }







num sum(a, b) {
  return a + b;
}

(int a, String b) returnchheckfun() {
  return (2, 'ss');
}
