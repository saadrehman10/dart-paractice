import 'dart:io';

dynamic userInput(type, [String? textDisplayed]) {
  textDisplayed != null ? print(textDisplayed) : false;
  dynamic input;
  try {
    input =
        type == "I" ? int.parse(stdin.readLineSync()!) : stdin.readLineSync()!;
    print('\n');
  } catch (e) {
    print('Invalid input, Try Again\n');
    return userInput(type);
  }
  return input;
}

void printList(Map todolist) {
  var keys = todolist.keys.toList();
  print("The Current :\n");
  for (var i in keys) {
    print("$i. ${todolist[i]}");
  }
  print('\n');
}

void main() {
  Map<int, dynamic> todolist = {
    1: "buy grocery",
    2: "clean the house",
    3: "go to gym"
  };
  print('Welcome to Todo list\n');
  bool loop = true;
  while (loop) {
    dynamic opt = userInput("I",
        "Select an option:\n\n1. Add a task\n2. Delete a task\n3. Show all tasks\n4. Quit\n\nEnter the Selected option: ");
    switch (opt) {
      case 1:
        String task = userInput("s", 'Enter the task:\n\t');
        todolist[todolist.length + 1] = task;
      case 2:
        print('Which task you wanted to delete ?\n');
        printList(todolist);
        int delOpt = userInput("I", 'Enter the Selected Option');
        if (todolist.containsKey(delOpt)) {
          todolist.remove(delOpt);
          var value = todolist.values.toList();
          todolist.clear();
          for (int i = 0; i < value.length; i++) {
            todolist[i + 1] = value[i];
          }
        } else {
          print('Task Option dosn\'t exist,\nTry again');
          opt != null ? opt = 2 : false;
        }
      case 3:
        printList(todolist);
      default:
        opt != 4 ? false : loop = false;
    }
  }
}
