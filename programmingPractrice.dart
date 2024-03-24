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
  int noOfSongs = input('i', 'Enter the no of songs in play list ');
  if (noOfSongs >= (2 * pow(10, 5).toInt()))
    throw Exception("Number too large!");
  int randomGenrator = (pow(2, 10)).toInt();
  List<int> songList = List<int>.generate(
      noOfSongs - 1, (index) => Random().nextInt(randomGenrator));
  List<int> same = [];
  for (int i = 0; i <= songList.length - 1; i++) {
    for (int j = 0; j <= songList.length - 1; j++) {
      if (songList[j] == songList[i]) {
        same.insert(same.length, songList[i]);
      }
    }
  }

  print(songList);
  print(same);
  print('the number of bobs fav singers ${same.length - songList.length - 1}');
  void main() {
    // Sample input
    int noOfSongs = 5;
    List<int> singers = [1, 1, 2, 2, 4];

    // Step 1: Initialize a list for singer counts
    List<int> singerCounts =
        List.filled(1000, 0); // Assuming a max of 1000 different singers

    // Step 2: Iterate through the input list of singers
    for (int i = 0; i < noOfSongs; i++) {
      int singer = singers[i];
      singerCounts[singer]++;
    }

    // Step 3: Find the maximum count
    int maxCount = 0;
    for (int count in singerCounts) {
      if (count > maxCount) {
        maxCount = count;
      }
    }

    // Step 4: Count the number of singers with the maximum count
    int favoriteSingersCount = 0;
    for (int count in singerCounts) {
      if (count == maxCount) {
        favoriteSingersCount++;
      }
    }

    // Output the result
    print('The number of Bob\'s favorite singers is $favoriteSingersCount');
  }

  int noOfSongs = input('i', 'Enter the number of songs in the playlist');
  if (noOfSongs >= (2 * pow(10, 5).toInt()))
    throw Exception("Number too large!");

  Map<int, int> singerOccurrences = {};
  int maxOccurrence = 0;
  int favoriteSingersCount = 0;

// Assuming 'singers' is a list of integers representing the singers.
  for (int i = 0; i < noOfSongs; i++) {
    int singer = singers[i];

    // Manual map update without using built-in functions
    if (!singerOccurrences.containsKey(singer)) {
      singerOccurrences[singer] = 1;
    } else {
      singerOccurrences[singer] += 1;
    }

    // Keep track of the maximum occurrence
    if (singerOccurrences[singer] > maxOccurrence) {
      maxOccurrence = singerOccurrences[singer];
    }
  }

// Count the number of singers with the maximum occurrence
  for (int singer in singerOccurrences.keys) {
    if (singerOccurrences[singer] == maxOccurrence) {
      favoriteSingersCount += 1;
    }
  }

  print('The number of Bob\'s favorite singers is $favoriteSingersCount');
  
}
