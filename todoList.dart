import 'dart:io';

void main() {
  Map<int, dynamic> todolist = {};
  print('Welcome to Todo list\n');
  bool loop = true;
  while (loop) {
    print(
        "Select an option\n1. Add a task\n2. Delete a task\n3. Show all tasks\n4. Quit");
    int optSelected = int.parse(stdin.readLineSync()!);
    switch (optSelected) {
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
        int opt = int.parse(stdin.readLineSync()!);
        if (!todolist.containsKey(opt)) throw Exception('Invalid Option');
        todolist.remove(opt);
      case 3:
        var keys = todolist.keys.toList();
        for (var i in keys) {
          print("$i. ${todolist[i]}");
        }
      default:
        optSelected != 4 ? print('selected correct option') : loop = false;
    }
  }
}
