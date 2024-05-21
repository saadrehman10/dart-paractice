void main() {
  List<int> array = [1, 25, 2, 1, 5, 3, 5, 2, 34];
  print(array.sum);
}

extension on List<int> {
  int get sum => fold(0, (a, b) => a + b);
}
