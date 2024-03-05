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
  // // print((newe.toString()).runtimeType);
  // String name = ' Hi my name is saad';
  // print('Hey name is ${name.substring(14, 19)}');
  // var array = ['saad', 2, 999.23, "ahmed", 1, 2, 3, 4, 5, 6, 7];
  // print(array);
  // print(array.runtimeType);
  // var a = 10;
  // var b = 'saad';
  // var c = 30;
  // print(b + a);
  // String text = "hello world";
  // print("Capitalized first letter of String: ${text[0].toUpperCase()}${text.substring(1)}");
  /* /* ---------======= Dart  Questions for practice 1 =======--------*/
  // Q1. write a programme to write your name .
  // Q2.Write a program to print Hello I am “John Doe” and Hello I’am “John Doe” with single and double quotes.
  // Q3.Declare constant type of int set value 7.
  var name = "Saad ur Rehman";
  print(name);
  print('Hello I am "Jhon Doe"');
  print("Hello I'am \" John Due \"");
  int num1 = 7;
  // Q4.Write a programme in Dart that finds Simple interest Formula = (p* t* r) / 100
  print("Enter the value for p :");
  num p = num.parse(stdin.readLineSync()!);
  print("Enter the value for r :");
  num r = num.parse(stdin.readLineSync()!);
  print("Enter the value for t :");
  num t = num.parse(stdin.readLineSync()!);
  num ans = (p * r * t) / 100;
  print("Your Interest is : " + ans.toString());
  // Q5.Write a programme to print a square of a number by use input;
  print("Enter a number to squre : ");
  num squr = num.parse(stdin.readLineSync()!);
  print("The Squre of your number is : ${squr * squr}");

  // Q6.Write a program to print your full name
  print("Enter your first Name: ");
  String firstName = stdin.readLineSync()!;
  print("Enter your Last Name: ");
  String lastName = stdin.readLineSync()!;
  print("Your Namme is $firstName $lastName");
  // Q7.Write a program to find quotient and remember of two integers.
  int firstInt = 10;
  int secondInt = 11;
  double quotient = firstInt / secondInt;
  int remainder = firstInt % secondInt;
  print("The quotient is " +
      quotient.toString() +
      "\nThe remainder is " +
      remainder.toString());
  // Q8.Write a program to swap two number/
  num a = 10;
  num b = 20;
  num c;
  c = a;
  b = a;
  a = c;
  print("value of  a is $a and the value of b is $b");
  // Q9. write a program to remove all the whitespaces form a text
  print("Enter a string with whitespaces : ");
  String inputByUser = stdin.readLineSync()!;
  print("Yor string with remeoved all whitespaces ${inputByUser.trim()}");
  // Q10.Write a program that convrets tha String into int
  String str = "34";
  int strint = int.parse(str);
  print(str.runtimeType);
  print(strint.runtimeType);
  // Q11.Suppose, you often go to restaurant with friends and you have to split amount of bill. Write a program to calculate split amount of bill. Formula= (total bill amount) / number of people
  print("Enter the number of friends you are with : ");
  int friendCount = int.parse(stdin.readLineSync()!);
  print("Enter the amount of the bill : ");
  double bill = double.parse(stdin.readLineSync()!);
  double eachBill = bill / friendCount;
  print("Each preson hass to pay $eachBill");
  // Q12.Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed)
  int distance = 25;
  int speed = 40;
  double timeTakenToTravel = distance / speed;
  print("Time taken to travel is $timeTakenToTravel ");

/* output */
/* PS C:\Users\saadr\Desktop\dart paractice> dart .\practice.dart
Saad ur Rehman
Hello I am "Jhon Doe"
Hello I'am " John Due "
Enter the value for p :
2
Enter the value for r :
4
Enter the value for t :
74
Your Interest is : 5.92
Enter a number to squre : 
55
The Squre of your number is : 3025
Enter your first Name: 
Saad
Enter your Last Name: 
Ur Rehman
Your Namme is Saad Ur Rehman
The quotient is 0.9090909090909091
The remainder is 10
value of  a is 10 and the value of b is 10
Enter a string with whitespaces : 
    Hi     Saad    here With white spaces 
Yor string with remeoved all whitespaces Hi     Saad    here With white spaces
String
int
Enter the number of friends you are with : 
9
Enter the amount of the bill : 
900
Each preson hass to pay 100.0
Time taken to travel is 0.625 
PS C:\Users\saadr\Desktop\dart paractice> 


 */ */
  /*  // Q12.Suppose, your distance to office from home is 25 km and you travel 40 km per hour. Write a program to calculate time taken to reach office in minutes. Formula= (distance) / (speed)

  print('Enter the distance b/w (IN KM): ');
  int distance = int.parse(stdin.readLineSync()!);
  print("Enter the speed you at which you travel ");
  int speed = int.parse(stdin.readLineSync()!);
  double timeTakenToTravel = ((distance / speed) * 60);
  print("Time taken to travel is $timeTakenToTravel minutes ");
  /* PS C:\Users\saadr\Desktop\dart paractice> dart .\practice.dart
      Enter the distance b/w (IN KM): 
      25
      Enter the speed you at which you travel 
      40
      Time taken to travel is 37.5 minutes  */ */

  //Write a program in Dart to remove all whitespaces from String.
  // String text = stdin.readLineSync()!;
  // var text1 = text.replaceAll('  ', " ").replaceAll("  ", " ").trim();
  // print(text1);
  // int noOfMonth = int.parse(stdin.readLineSync()!);

  // // Check the no of month
  // if (noOfMonth == 1) {
  //   print("The month is jan");
  // } else if (noOfMonth == 2) {
  //   print("The month is feb");
  // } else if (noOfMonth == 3) {
  //   print("The month is march");
  // } else if (noOfMonth == 4) {
  //   print("The month is april");
  // } else if (noOfMonth == 5) {
  //   print("The month is may");
  // } else if (noOfMonth == 6) {
  //   print("The month is june");
  // } else if (noOfMonth == 7) {
  //   print("The month is july");
  // } else if (noOfMonth == 8) {
  //   print("The month is aug");
  // } else if (noOfMonth == 9) {
  //   print("The month is sep");
  // } else if (noOfMonth == 10) {
  //   print("The month is oct");
  // } else if (noOfMonth == 11) {
  //   print("The month is nov");
  // } else if (noOfMonth == 12) {
  //   print("The month is dec");
  // } else {
  //   print("Invalid option given.");
  // }
  // var age = 23;
  // assert(age != 22, "Age must be 22");
  // String a = "hi";
  // print(a.length);
}
