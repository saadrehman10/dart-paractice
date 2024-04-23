void main() {
  // List<String> list = List.unmodifiable(['a', 'b']);

  // print(list.indexOf('a'));
  // print(list.indexOf('b'));

  // var arrayList = ["hello", "hello", 1, 22, true, 'new', null];
  // arrayList.add("22");
  // print(arrayList.first);
  // print(arrayList.last);
  // print(arrayList.isNotEmpty);
  // print(arrayList.isEmpty);
  // print(arrayList.reversed);
  // print(arrayList.firstOrNull);
  // arrayList.addAll([11, 'hello2', 3.55, true, false, 'sasad']);
  // print(arrayList);
  // arrayList.insert(5, "inserteed element 5");
  // arrayList.insertAll(0, [true, 'yes', 'no']);
  // print(arrayList);
  // print(arrayList.join(''));
  // arrayList.remove("hello");
  // print(arrayList);
  // arrayList.removeAt(0);
  // print(arrayList);
  // arrayList.removeLast();
  // print(arrayList);
  // arrayList.replaceRange(0, 2, ['0', '2']);
  // print(arrayList);
  // arrayList.replaceRange(8, 9, ['hello', 'replaced', 2, 5223, 2]);
  // print(arrayList);
  // arrayList.removeRange(0, 10);
  // print(arrayList);
  // arrayList.forEach((e) {
  //   e.runtimeType == int ? print('int exit') : print(e);
  // });
  // try {
  //   arrayList.single;
  // } catch (e) {
  //   print(' array has more than one element $e');
  // }
  // ;
  // var list = [1, 11, 111, 111, 1244, 12, 1423, 9987190, 43443, 11124];
  // print('original list $list');
  // list.remove(1);
  // print(list);
  // print(list.removeAt(1));
  // print(list);
  // list.removeLast();
  // print(list);
  // list.removeRange(0, 2);
  // print(list);
  // var list1 = [];
  // print(list1.singleOrNull);
  // print(list.nonNulls);
  // print(list1.nonNulls);
  // print(list.map((n) => print(n)));
  // print(list.asMap());
  // var list = [
  //   1,
  //   3,
  //   5,
  //   6,
  //   3,
  // ];
  // var listMap = list.map((n) => n * 3).toList();
  // print(listMap);
  // var listTest = [];

  // list.forEach((element) {
  //   listTest.add(element * 4);
  // });

  // print(listTest);
  // var listAsMap = listTest.asMap();
  // print(listAsMap);
//   for (int i  = 0; i < listAsMap.length;i++) {
//     if (!listAsMap.containsKey(i)) {
//       listAsMap[i] = 'null';
//     } else {
//       listAsMap[i] += " added";}
//   }
//   print(listAsMap);
// }
  // List<String> names1 = ['saad', 'ali'];
  // List<int> numbers = [1, 3, 4, 3];
  // var combinedList = [...names1, ...numbers];
  // print(combinedList);
  // List<int> array = [1, 2, 5, 6, combinedList.length <= 4 ? 9 : 8];
  // print(array);
//   List<int> list = [1, 2, 3, 4, 5, 6, 7, 7, 7];
//   // var mapList =list.map((n) =>  list.remove(n));
//   // var mapList = list.forEach((element) {
//   //   list.remove(element);
//   // });
//   //  var  newList= list.where((e)=> list.remove(e)) ;
//   //  print(newList);
//   // for (int i = 1; i >= list.length ;i++) {
//   //   list.removeAt(i);
//   // }
//   for (int i = list.length - 1; i >= 0; i--) {
//   list.removeAt(i);
// }
//   // list.remove(7);
//   print(list);
  List<int> forSublist = [1, 2, 4, 5, 6, 7, 3, 2, 5, 5, 9, 3, 7, 5, 4, 44];
  print(forSublist.sublist(0, 5));
}
