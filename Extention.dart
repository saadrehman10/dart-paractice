void main() {
  List<int> array = [1, 25, 2, 1, 5, 3, 5, 2, 34];
  print(array.sum(3));
}

extension on List<int> {
  int sum(int value) {
    return fold(value, (a, b) => a + b);
  }
}
