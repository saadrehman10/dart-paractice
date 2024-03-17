void main() {
  Set<int> list = {1, 2, 3, 4, 5, 6};
  print(list);
  list.add(7);
  print(list);
  list.addAll([
    1,
    2,
    4,
    4,
    56,
    6,
  ]);
  print(list);
  print(list.first);
  print(list.last);
  print(list.length);
  print(list.isEmpty);
  list.remove(1);
  print(list);
  Set<int> array = {
    1,
    2,
    4,
    5,
    6,
    777,
    45,
    3,
    67753,
  };
  print(array.elementAt(0));
  print(array.elementAtOrNull(33));
  var set = list.difference(array);
  print(set);
  var intersection = array.intersection(list);
  print(intersection);
  // List<int> hello = [1, 2, 4, 5, 6];

  var setType = {1, '123', () => 2, true, null, if (true) 3,'hello'};
  
  print(setType);
}
