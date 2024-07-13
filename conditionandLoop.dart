// import 'dart:io';

// void check_account(int amount) {
//   if (amount < 0) {
//     throw "hello"; // Raising explanation externally
//   }
// }

void main() {
  // int a = int.parse(stdin.readLineSync()!);
  // bool b = false;
  // bool c = true;
  // print('with if else if statements');
  // if (a == 1) {
  //   print("a is equal to $a");
  // } else if (a == 2) {
  //   print("a is equal to $a");
  // } else if (a == 3) {
  //   print("a is equal to $a");
  // } else if (a == 4) {
  //   print("a is equal to $a");
  // } else {
  //   print("a is bigger than 5");
  // }
  // print('with switch cases');

  switch (a) {
    case 1:
      print("a is equal to $a");
      break;
    case 2 :
      print("a is equal to $a");
      break;
    case 3:
      print("a is equal to $a");
    case 4:
      print("a is equal to $a");
    default:
      print("a is bigger than 5");
  }

  // print('the bool values: ');

  // if (!b) {
  //   print(c);
  // }
  // if (c) {
  //   print(b);
  // }

  // print('The biggest no is\n');
  // print('Enter first no: ');
  // int firstNum = int.parse(stdin.readLineSync()!);
  // print('Enter second no: ');
  // int secondNum = int.parse(stdin.readLineSync()!);
  // print('Enter third no: ');
  // int thirdNum = int.parse(stdin.readLineSync()!);
  // print("with if else if statemetn");
  // if (firstNum > secondNum && firstNum > thirdNum) {
  //   print("the fist no is the biggest $firstNum");
  // } else if (secondNum > firstNum && secondNum > thirdNum) {
  //   print("the second no is biggest $secondNum");
  // } else if (thirdNum > firstNum && thirdNum > secondNum) {
  //   print("the third no is tha biggest $thirdNum");
  // }

  // int num1 = int.parse(stdin.readLineSync()!);
  // int num2 = int.parse(stdin.readLineSync()!);
  // int max = (num1 > num2) ? num1 : num2;
  // print('the greter no is : $max');
  // String ans = (num1 == num2)
  //     ? 'similer values of num1 and 2'
  //     : 'different values of num1 and 2';

  // print(ans);

  // int sum = 0;
  // sum == 0 ? print('The sum is zero ') : print('The sum is not zero');
  // bool isRaining = bool.parse(stdin.readLineSync()!);
  // var ans = isRaining ? print('Its Raining') : print('Its not raining');
  // for (int i = 100; i >= 0; i--) {
  //   print("hello world $i");
  // }
  // int total = 0;
  // int sum = 100;
  // for (int i = 0; i < sum; i++) {
  //   total += 1;
  //   print(total);
  // }
  // int sum = 1;
  // var a = [1, 2, 2, 3];
  // a.forEach( (a) => print(a));
  // List<String> array = ['hello', 'world', 'is', 'doomed'];
  // array.forEach((element) {
  //   print(element);
  //   element += "sad";
  // });
  // print(array.join(''));

  // List<int> no1 = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];
  // dynamic no2 = [];
  // no1.forEach((element) {
  //   no2.add(element ~/ 100);

  // });
  // print(no2);
  // // print(no1);
  // List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // // Convert the list to a map view with asMap()
  // Map<int, String> fruitsMap = fruits.asMap();
  // print(fruitsMap);
  // fruitsMap.forEach((key, value) {
  //   value = "hello";
  // });
  // print(fruitsMap);
  // List<int> array = [1, 2, 3, 4, 6, 7, 8, 9, 10, 0, 0, 0, 0, 0, 0, 0];
  // for (int index in array) {
  //   index = index++;
  // }
  // var temp = array.asMap();
  // print(temp);
  // var  a = 10;
  // a = 11;
  // const  b = 10;
  // b = 11;
  // final c = 10;
  // c = 10;
  // var i = 0;
  // while (i < 100) {
  //   if ((i % 2) == 0) {
  //     print(i);
  //   }
  //   i++;
  // }
  // int i = 0;
  // do {
  //   i++;
  //   print('hello world $i');
  // } while (i < 10);

  // int j = 0;
  // while (j < 10) {
  //   j++;
  //   print("This is normal while $j");

  // }
  // int total = 0;
  // int n = 100; // change as per required
  // int i = 1;

  // do {
  //   total = total + i;
  //   i++;
  // } while (i <= n);

  // print("Total is $total");

  // int total1 = 0;
  // int no = 100;
  // int j = 1;
  // while (j <= no) {
  //   total1 = total1 + j;
  //   j++;
  // }
  // print("the while loop out put is $total1");
  // int i = 0;
  // print("The do while Loop ans :");
  // do {
  //   print("This is do while Loop at false condition");
  // } while (i != 0);

  // print('the while loop ans: ');
  // while (i != 0) {
  //   print("This is while Loop at false condition");
  // }
  // print('the break effet ');

  // for (int i = 0; i <= 10; i++) {
  //   if (i == 2) {
  //     break;
  //   }
  //   print(i);
  // }
  // print('the contiue effet ');
  // for (int i = 0; i <= 10; i++) {
  //   if (i == 2) {
  //     continue;
  //   }
  //   print(i);
  // }
  // print('the break effet ');

  // int j = 0;
  // while (j < 10) {
  //   if (j == 8) {
  //     break;
  //   }
  //   print(j);
  //   j++;
  // }
  // print('the contiue effet ');
  // int k = 0;
  // while (k < 10) {
  //   if (k == 8) {
  //     k++;
  //     continue;
  //   }
  //   print(k);
  //   k++;
  // }

  // var error;
  // try {
  //   print("Enter a number to divide:  ");
  //   int userInput = int.parse(stdin.readLineSync()!);
  //   print("Enter divider:  ");
  //   int quotient = int.parse(stdin.readLineSync()!);
  //   int ans = userInput ~/ quotient;
  //   var remainder = userInput % quotient;
  //   print('The answer is $ans and remaindre is $remainder');
  // } catch (ex) {
  //   print(ex);
  //   error = ex;
  // } finally {
  //   if (error == null) {
  //     print("Congratulation you are a genius.");
  //   } else if (error != null) {
  //     print("You are idot.");
  //   }
  // }

  // try {
  //   check_account(-10);
  // } catch (e) {
  //   print('The account cannot be negative');
  //   print(e);
  // }
  // int a = int.parse(stdin.readLineSync()!);
  // try {
  //   if (a == 1) {
  //     throw new FormatException();
  //   } else {
  //     print("Your gess the correct no.");
  //   }
  // } catch (e) {
  //   print(e);
  // }
  /* ------======Questons For Practice 2=====------------- */
  //Q1. Write a dart program to check if the number is odd or even.

  // try {
  //   int number = int.parse(stdin.readLineSync()!);
  //   var checker = number % 2;
  //   checker == 0 ? print("the number is Even.") : print("the number is Odd.");
  // } catch (e) {
  //   print(e);
  // }
  //Q2.Write a dart program to check whether a character is a vowel or consonant.
  // Set<String> vowel = {"a", "e", "i", "o", "u"};
  // var char = stdin.readLineSync()!;
  // if (vowel.contains(char) && char.length == 1) {
  //   print("The Chacter is Vowel \"$char\" ");
  // } else if (char.length != 1) {
  //   print("Enter a singel Character.");
  // } else {
  //   print("You enter the constant $char.");
  // }
  //Q3.Write a dart program to check whether a number is positive, negative, or zero.
  // int userInput = int.parse(stdin.readLineSync()!);
  // switch (userInput) {
  //   case 0:
  //     print("Your number is 0.");
  //     break;
  //   case > 0:
  //     print("Your number is positive.");
  //     break;
  //   case < 0:
  //   print("Your number is negaitve.");
  // }
  //Q4.Write a dart program to print your name 100 times.
  // int n = 1;
  // while (n <= 100) {
  //   print("while Saad ur Rehamn $n");
  //   n++;
  // }
  // for (int i = 1; i <= 100; i++) {
  //   print(" for Saad ur Rehman $i");
  // }
  //Q5.Write a dart program to calculate the sum of natural numbers.
  // int sumOfNaturalNo = 0;
  // int n = int.parse(stdin.readLineSync()!);
  // for (int i = 0; i <= n; i++) {
  //   sumOfNaturalNo += i;
  // }
  // print(sumOfNaturalNo);
  //Q6.Write a dart program to generate multiplication tables of 5.
  // print("Enter the no thaht  you wanted the table of : ");
  // int table = int.parse(stdin.readLineSync()!);
  // print("Enter the range : ");
  // int range = int.parse(stdin.readLineSync()!);
  // for (int i = 1; i <= range; i++) {
  //   print("$table * $i = ${table * i}");
  // }
  //Q7.Write a dart program to generate multiplication tables of 1-9.
  // for (int i = 1; i <= 9; i++) {
  //   print("\n\tTable of $i\n");
  //   for (int j = 1; j <= 10; j++) {
  //     print("$i * $j = ${i * j}");
  //   }
  // }
  //Q8.Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
  // print("Enter the first No: ");
  // num no1 = num.parse(stdin.readLineSync()!);
  // print("Enter the second No: ");
  // num no2 = num.parse(stdin.readLineSync()!);
  // print("Which Operation You wanted to perform:\n1. +\n2. -\n3. *\n4. /");
  // int operation = int.parse(stdin.readLineSync()!);
  // switch (operation) {
  //   case 1:
  //     print(no1 + no2);
  //   case 2:
  //     print(no1 - no2);
  //   case 3:
  //     print(no1 * no2);
  //   case 4:
  //     print(no1 / no2);

  // }
  //Q9.Write a dart program to print 1 to 100 but not 41.
  // for (int i = 1; i <= 100; i++) {
  //   if (i == 41) {
  //     print("41 is skipped");
  //     continue;
  //   }
  //   print("I am number $i.");
  // }
}
