import 'dart:ffi';
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
  // int noOfSongs = input('i', 'Enter the no of songs in play list ');
  // if (noOfSongs >= (2 * pow(10, 5).toInt()))
  //   throw Exception("Number too large!");
  // int randomGenrator = (pow(2, 10)).toInt();
  List<int> songList = [
    1,
    2,
    1,
    2,
    1,
    3,
    1,
    1,
    2,
    2,
    3,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    4,
    11,
    22,
    14
  ];
  // List<int> songList = List<int>.generate(
  //     noOfSongs - 1, (index) => Random().nextInt(randomGenrator));
  List<int> same = [0];
  for (int i = 0; i <= songList.length - 1; i++) {
    for (int j = 0; j <= songList.length - 1; j++) {
      if (songList[j] == songList[i]) {
        same.insert(same.length, songList[i]);
      }
    }
  }
  print(same);
  print('the number of bobs fav singers ${same.length}');
}
