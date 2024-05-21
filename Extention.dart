void main() {
  List<int> array = List<int>.generate(20, (index) => 1);
  print(array.sum(5));
}

extension on List<int> {
  int sum(int? value) {
    return fold(value ?? 0, (a, b) => a + b);
  }
}
