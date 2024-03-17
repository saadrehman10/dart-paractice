import 'dart:io';

void main() {
  Map<int, dynamic> todolist = {
    1: "buy grocery",
    2: "clean the house",
    3: "go to gym"
  };
  while (true) {
    print('Which task you wanted to delete ?\n');
    var keys = todolist.keys.toList();
    for (var i in keys) {
      print("$i. ${todolist[i]}");
    }
    print('\n');
    int? opt = int.parse(stdin.readLineSync()!);
    if (!todolist.containsKey(opt)) throw Exception('Invalid Option');
    todolist.remove(opt);
    var value = todolist.values.toList();
    todolist.clear();
    print(value);
    for (int i = 0; i < value.length; i++) {
      todolist[i + 1] = value[i];
    }
  }
}
