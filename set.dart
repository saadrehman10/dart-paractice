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
  list.clear();
  print(list);
  
}
