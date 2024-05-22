class Random<T> {
  T? value;

  Random(this.value);

  void dispalyRandom() {
    print(this.value);
  }

  T returnjust(T value) {
    return value;
  }
}

extension on Random<int> {
  int sum1(int vaue) => vaue++;
}

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
