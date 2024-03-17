// import 'dart:io';

void main() {
  // Map<String, String> snc = {
  //   'Saad': '1',
  //   'Ali': '1',
  //   'Saeed': '0',
  //   'Ahmed': '9',
  //   'Mohamed': '8'
  // };
  // snc['Saad'] = '3';
  // print(snc);
  // print(snc.keys);
  // print(snc.values);
  // print(snc.length);
  // snc['Hassan'] = '7';
  // print(snc);
  // List<String> list = snc.keys.toList();
  // print(list);
  // list.sort();
  // print(list);
  // List<String> listInt = snc.values.toList();
  // print(listInt);
  // listInt.sort();
  // print(listInt);
  // print(snc.containsKey('Saad'));
  // print(snc.containsValue('3'));
  // snc.remove('Ali');
  // print(snc);
  // print(snc.keys);
  // print(snc.values);
  // // snc.forEach((key, value) => print('Key is $key and value is $value'));

  // snc.forEach((key, value) {
  //   print('$key and the value is $value');
  // });
  // snc.removeWhere((key, value) => value == '0');
  // print(snc);
  // print(snc.keys);
  // print(snc.values);
  // print(snc.keys.toList());
  // print(snc.values.toList());
  // print(snc.isEmpty);
  // snc.forEach((key, value) {});
  // snc['hellow'] = '3';
  // snc.remove('hellow');
  // print(snc.length);
  // snc.removeWhere((key, value) => value.toString() == '8');
  // print(snc);
  // snc.containsKey('Ali');
  // var newsnc = {"Mohamed": "12", "hello": "123"};
  // var unionMap = {...newsnc, ...snc};
  // print(unionMap);
  // newsnc.clear();
  // print(newsnc);
  // var list = [2, 1, 4, 21, 3, 6, 2, 3, 6, 78, 4, 4, 33.232];
  // list.sort();
  // print(list);
  // var newlist = list.where((values) => values >= 5 );
  // print(newlist);
  //practice q4
  // List<String> names = ['saad', 'Ahmed', 'Ahram', 'Ali'];
  // names.sort();
  // names.forEach((element) {
  //   print(element);
  // });
  // names.map((e) => print(e));
  // List<String> newnames =
  //     names.where((element) => element.length <= 4).toList();
  // print(newnames);

  // Set<String> fruit = {'Apple', 'Banana', 'Orange'};
  // fruit.forEach((element) {
  //   print(element);
  // });
  // var newsone = fruit.map((e) => e == 'Apple'? e+ ' is red':e);
  // print(newsone);
  // print(fruit.where((element) => element == 'Banana'));
  // List<num> list = [];
  // while (true) {
  //   print('Enter an number' + '\n' + 'or type exit to stop the program:');
  //   var number = stdin.readLineSync();
  //   if (number == 'exit') {
  //     break;
  //   } else {
  //     try {
  //       num numb = num.parse(number!);
  //       print(numb);
  //       list.add(numb);
  //       print(list);
  //     } catch (e) {
  //       print(e);
  //     }
  //   }
  // }
  // num sum = 0;
  // print(list);
  // list.forEach((element) {
  //   sum = sum + element;
  // });

  // print(sum);
  // List<String> days = [];
  // days.add("Monday");
  // days.add("Tuesday");
  // days.add("Wednesday");
  // days.addAll(["Thursday", "Friday", "Saturday", "Sunday"]);
  // days.forEach((e) {
  //   print(e);
  // });
  // List<String> names = [
  //   'saad',
  //   'Ahmed',
  //   'Ahram',
  //   'Ali',
  //   'Hassan',
  //   'Abdullah',
  //   "Zainab"
  // ];
  // var listContainingA = names.where((e) => e.startsWith("A")).toList();
  // print(listContainingA);
  // Map<String, dynamic> biodata = {
  //   "name": "Saad",
  //   'age': 20,
  //   'address': 'A397 sector 14-B shaman town 1',
  //   'country': 'Pakistan',
  // };

  // biodata['name'] = "Ahmed";
  // biodata['country'] = "USA";
  // biodata.forEach((key, value) {
  //   print('$key = $value');
  // });
  Map<String, int> phoneno = {
    'ali': 03132274336,
    'saad': 0338884939,
    'hassan': 0339509384,
    'zainab': 03009934849,
    'ahmad': 03009934232,
  };

  phoneno.forEach((key, value) {
    key.length <= 4 ? print(key) : false;
  });
  var keys = phoneno.keys;
  print(keys);
  keys.forEach((element) {
    element.length >= 4 ? print(element + "4") : false;
  });
}
