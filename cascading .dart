import 'dart:io';



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
  int sum1(value) => value++;
}

void main() {
  // List<int> array = [1, 2, 54, 3];
  // print(array);
  // array
  //   ..add(2)
  //   ..add(30)
  //   ..insert(3, 22)
  //   ..addAll([
  //     2,
  //     3,
  //     342,
  //   ])
  //   ..insertAll(5, [23232, 2322])
  //   ..forEach((element) {
  //     print(element);
  //   })
  //   ..asMap();

  Random<int> obj = Random<int>(22);
  Random<String> obj2 = Random<String>('hello');
  print(obj.sum1(22));
  print(obj2 ..dispalyRandom() ..returnjust('hel'));

}
