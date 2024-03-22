import 'dart:io';
import 'dart:math';

dynamic input(String type, [String? text]) {
  print(text ?? "Input something...");
  try {
    return type == 'i'
        ? int.parse(stdin.readLineSync()!)
        : stdin.readLineSync()!;
  } catch (e) {
    print('Invalid input');
  }
}

void main() {
  // var num1 = input('i', "Enter a number: ");
  // var num2 = input('i', "Enter the other number: ");
  // int opt = input('i',
  //     "Select Which  Operation You Want To Perform\n1-Addition \n2-Subtraction \n3-Multiplication \n4-Division");
  // switch (opt) {
  //   case 1:
  //     print(num1 + num2);
  //   case 2:
  //     print(num2 - num1);
  //   case 3:
  //     print(num1 * num2);
  //   case 4:
  //     print(num1 / num2);
  // }
  // int userInput = input('i', 'Enter the number you want to square: ');
  // print('the square of $userInput is ${pow(userInput, 2)}');
  // int a = 3;
  // int b = 4;
  // a = a + b;
  // b = a - b;
  // a = a - b;
  // print("a=$a and b=$b");
  int noOfSongs = input('i','Enter the no of songs in play list ');
  

}
