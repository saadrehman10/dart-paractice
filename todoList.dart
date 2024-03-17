import 'dart:io';

void main() {
  Map<int, dynamic> todolist = {};
  print('Welcome to Todo list\n');
  bool loop = true;
  while (loop) {
    print(
        "Select an option\n1. Add a task\n2. Delete a task\n3. Show all tasks\n4. Quit");
    int? opt;
    try {
      int optSelected = int.parse(stdin.readLineSync()!);
      opt = optSelected;
    } catch (e) {
      print("Invalid input!\nPlease enter a number.");
    }
    ;
    switch (opt) {
      case 1:
        try {
          String task = stdin.readLineSync()!;
          todolist[todolist.length + 1] = task;
        } catch (e) {
          print('Please enter the correct value' + '\n' + e.toString());
        }
      case 2:
        print('Which task you wanted to delete ?\n');
        var keys = todolist.keys.toList();
        for (var i in keys) {
          print("$i. ${todolist[i]}");
        }
        print('\n');
        int? opt = int.parse(stdin.readLineSync()!);
        if (!todolist.containsKey(opt)|| opt != int) throw Exception('Invalid Option');
        todolist.remove(opt);
        var value = todolist.values.toList();
        todolist.clear();
        for (int i = 0; i < value.length; i++) {
          todolist[i + 1] = value[i];
        }
      case 3:
        var keys = todolist.keys.toList();
        for (var i in keys) {
          print("$i. ${todolist[i]}");
        }
      default:
        opt != 4 ? print('selected correct option') : loop = false;
    }
  }
}
