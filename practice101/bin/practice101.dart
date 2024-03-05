// import 'package:practice101/practice101.dart' as practice101;
// import 'dart:io';

/* 
class human {}

addfun(a, b) {
  return a + b;
}

subfun(a, b) {
  return a - b;
}
 */
void main(List<String> arguments) {
  /* print('Enter a number to enter: ');
  int a = int.parse(stdin.readLineSync()!);
  print('Enter an other number : ');
  int b = int.parse(stdin.readLineSync()!);
  num c = addfun(a, b);
  num z = subfun(a, b);
  print("your answre is : $c");
  print("your answre is : $z"); */
  /* var firstName = 'Saad';
  var secondName = 'ur Rehman';
  print('Your full name is $firstName \n$secondName'); */
  /*  print("Enter first Number: ");
  int num1 = int.parse(stdin.readLineSync()!);
  print('Enter Second Number: ');
  int num2 = int.parse(stdin.readLineSync()!);
  // add two number
  int sum = num1 + num2;
  //  subtract two number
  int sub = num1 - num2;
  //  Multiply two number
  int mul = num1 * num2;
  //  Divide two number
  double div = num1 / num2;
  print(' The sum is : $sum \n The  Subtraction is : $sub \n The Multiplication is $mul \n The Division is $div   ');
  */
  /* String name = 'Saad ur Rehman';
  String address = 'A-397 Sector 14-B Shadman Town 2 near Shadman Masjid1';
  num age = 20;
  num height = 5.11;
  bool married = false;

  print('My Name Is ${name.toUpperCase()}');
  print('My Address Is $address');
  print('I am ${age} Years Old');
  print('My height is $height');
  print("married statues ${married ? "Married" : "Not Married"}"); */
  /* const pi = 3.142;
  cpi = 4.3232;
  print(pi);
  const pi = 333; */
  /* int num1 = 100; // without decimal point.
  double num2 = 130.2; // with decimal point.
  num num3 = 50;
  num num4 = 50.4;

  // For Sum
  num sum = num1 + num2 + num3 + num4;

  // Printing Info
  print("Num 1 is $num1");
  print("Num 2 is $num2");
  print("Num 3 is $num3");
  print("Num 4 is $num4");
  print("Sum is $sum");

  print('Sum rounded to 2 decimal places ${sum.toStringAsFixed(2)}');
  print('Sum rounded to 3 decimal places ${sum.toStringAsFixed(3)}');
  print('Sum rounded to 5 decimal places ${sum.toStringAsFixed(5)}'); */

  /* print('Hello World!\tsasdda\nhellor world'); */
  /* String testText = """
  fjkasdjfjasdjfkasjdfkljasdklfjaskldj
  fasdfsdafasldkjf as jafj as  asl  l  lkajf f jsakljflks aj
  sdfa fas
  f
  sdf
   sda
   f 
   asdf
   ads fdklsafdksjafkadsajfjasd;klfjdkfkljas j d 
   d

   a
   f
   ff
   f
   f
   f
    fhjsdahfasdkf""";
  print(testText); */
/* 
  double num1 = 10.01;
  int num2 = num1.toInt();
  print("the double no : $num1 and the int number is : $num2");

  List<String> names = [
    "raj",
    "saad",
    "ahmed",
  ];
  print('value of names $names');
  print('value of name at index 0 ${names[0]}');
  print('value of name at index 1 ${names[1]}');
  print('value of name at index 2 ${names[2]}');

  Set<String> weekdays = {
    'sunday ',
    'monday',
    'tuesday',
    'wednesday',
    'thursday',
    'friday',
    "saturday"
  };
  print('week days are $weekdays');
  var weeddays = weekdays.toList();
  print('frist day of the week is ${weeddays[1]}'); */
  /*  const mytestarrya = [1, 2, 3, 4, 2, 'saaed', true];
  const mytestarrya2 = {1, 2, 3, 4, "saad", true};
  print(mytestarrya);
  print(mytestarrya[1]);
  print(mytestarrya2);
  var value = mytestarrya[6] == false ? "hi" : "no";
  print(value); */
  /* Map<String, String> student_detailes = {
    "name": 'saad',
    "age": "23",
    'father Name': "Imtiaz Hussain",
  };
  print(student_detailes);
  print(student_detailes[0]);
  print(student_detailes['name']);
  print(student_detailes['age']); */
  /* const secondStudent = {'name': "saad" , "age": 23 , "fatherName": "imtiazhusain", "married": false  };
   print(secondStudent); */
  /* const test_student = [
    {"name": "ahmed", "age": 2},
    {"name": "saad", "age": 5}
  ];
  print(test_student[1]["name"]);

  /* ---- */ print("------------------------"); /* ------ */

  const test_student2 = {
    {"name": "ahmed", "age": 2},
    {"name": "saad", "age": 5}
  };
  print(test_student2);
   */

  /* String a = "1a3dr";
  print(a.runes); */
  //printing special characters using rune
  /* const a = [22,"string"];
  
  print(a.runtimeType);
  print(a is Object); */
  /* dynamic va = 49;
  print(va.runtimeType);
  va = "hello";
  print(va.runtimeType); */
  /* var va = 77;
  print(va.runtimeType); */
  // int a = int.parse(stdin.readLineSync()!);
  // int b = int.parse(stdin.readLineSync()!);
  // var module = a % b;
  // print(module);

//   // declaring two numbers
//   print("Enter ther first no : ");
//   int num1 = int.parse(stdin.readLineSync()!);
//   print("Enter ther first no : ");
//   int num2 = int.parse(stdin.readLineSync()!);

//   // performing arithmetic calculation
//   int sum = num1 + num2; // addition
//   int diff = num1 - num2; // subtraction
//   int unaryMinus = -num1; // unary minus
//   int mul = num1 * num2; // multiplication
//   double div = num1 / num2; // division
//   int div2 = num1 ~/ num2; // integer division
//   int mod = num1 % num2; // show remainder

// //Printing info
//   print("The addition is $sum.");
//   print("The subtraction is $diff.");
//   print("The unary minus is $unaryMinus.");
//   print("The multiplication is $mul.");
//   print("The division is $div.");
//   print("The integer division is $div2.");
//   print("The modulus is $mod.");

// // declaring two numbers
//  int num1=0;
//  int num2=0;

// // performing increment / decrement operator

// // pre increment
// num2 = ++num1;
// print("The value of num2 is $num2");

// // reset value to 0
// num1 = 0;
// num2 = 0;

// // post increment
// num2 =  num1++;
// print("The value of num2 is $num2");
// int a = 10;
  // print(a);
  // dynamic b = "saad";
  // print(b);
  // print(b.runtimeType);
  // dynamic num1 = 0;
  // dynamic num2;
  // print('number ++num1');
  // num2 = ++num1;
  // print(num2);
  // print("reset the numbers..");
  // num1 = 0;
  // num2 = 0;

  // print('number num1++');
  // num2 = num1++;
  // print(num2);
  // int num3 = 10;
  // int num4 = 13;

  // print(num3 > num4);
  // print(num3 < num4);
  // print(num3 == num4);
  // print(num3 >= num4);
  // print(num3 <= num4);
  // print(num3 != num4);
  // int userid = 123;
  // int userpin = 456;

  // // // Printing Info
  // // print((userid == 123) && (userpin == 456)); // print true
  // // print((userid == 1213) && (userpin == 456)); // print false.
  // // print((userid == 123) || (userpin == 456)); // print true.
  // // print((userid == 1213) || (userpin == 456)); // print true
  // // print((userid == 123) != (userpin == 456)); //print false
  // // print((userid == 123) == (userpin == 456)); //print true
  // // print((userpin == 456));
  // print((userid == 123) != (userpin == 456)); //print true
  // print((userid == 123) == (userpin == 456)); //print true
  //
  // print("Enter a number : ");
  // var num1 = num.parse(stdin.readLineSync()!);
  // print("Enter Second no : ");
  // var num2 = num.parse(stdin.readLineSync()!);

  // var ans = num1 + num2;
  // print(r"Your answer is : $ans");
  // String s1 =
  //     ' She said, " Hello. " '; // single quotes with double quotes inside
  // String s2 = "He said, 'Goodbye.'"; // double quotes with single quotes inside
  // print(s1);
  // print(s1.trim());
  // String str = "Hello World";
  // String str2 = "New Life";
  // print("hello its not the new world" + str + "\n" + str2 + ".");
  // print("hello $str and here $str2");
  // var str = "";
  // print(str.codeUnits);
  // print(str.runes);
  // print(str.isEmpty);
  // print(str.isNotEmpty);
  // var str2 = "";
  // print(str2.isNotEmpty);
  // print(str2.compareTo(str));
  // String str1 = 'aaaaaaaaaaaaaa';
  // String newstr = str1.replaceAll('a', ' Saad');
  // print(newstr);
  // print(str1);
  // print(newstr.split('a'));
  // int newe = 20;
  // print(newe.runtimeType);
  // print((newe.toString()).runtimeType);
  String name = ' Hi my name is saad';
  print('Hey name is ${name.substring(14, 19)}');
}
