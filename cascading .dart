void main() {
  List<int> array = [1, 2, 54, 3];
  print(array);
  array
    ..add(2)
    ..add(30)
    ..insert(3, 22)
    ..addAll([
      2,
      3,
      342,
    ])
    ..insertAll(5, [23232, 2322])
    ..forEach((element) {
      print(element);
    })
    ..asMap();
}
