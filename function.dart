import "dart:io";

void printsome() {
  print("hello word");
}

num numberAdd(num a, num b) {
  var c = stdin.readByteSync;
  print(c);
  return (a + b);
}

void add() {
  print(numberAdd(10, 77));
}

void shapeRectangle(int width, int height) {
  for (int i = 0; i < height; i++) {
    var line = [];
    for (int j = 0; j < width; j++) {
      line.add("*");
    }
    print(line.join());
  }
}

String shapeRectangleReturn(int width, int height) {
  var shape = [];
  for (int i = 0; i < height; i++) {
    var line = [];
    for (int j = 0; j < width; j++) {
      line.add("*");
    }
    shape.add(line.join());
    shape.add("\n");
  }
  return shape.join();
}

void typeChecker(String a, b, int c, var d, hello, bool g,
    [String e = " hello", var f = 1]) {
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);
  print(e.runtimeType);
  print(e);
  print(f.runtimeType);
  print(f);
  print(g.runtimeType);
  print(hello.runtimeType);
}

void typeCheckerNull(c, [a, var b]) {
  print(a.runtimeType);
  print(b.runtimeType);
}

void typeCheckerSet(int a, {int? b, required bool? c, Set<String>? d, var e}) {
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);
  print(e.runtimeType);
}

void main() {
  // int fun1() {
  //   void fun2() {
  //     print("Hello");
  //   }

  //   fun2;
  //   fun2();
  //   return 0;
  // }
  // print(fun1.runtimeType);
  // print(fun1());

  // printsome();
  // print(numberAdd(10, 10.2));
  // add();
  // int height = int.parse(stdin.readLineSync()!);
  // int width = int.parse(stdin.readLineSync()!);
  // var a = shapeRectangleReturn(width, height);
  // print(a);
  // typeChecker("srff", 8.334, 2, [2, 3, 4], {3, "thind"}, true, "ello", "new");
  // typeCheckerNull("hello",{null,"world"});
  // typeCheckerSet(1, b: 4, d: {"hello"}, c: true, e: [5]);
  // typeCheckerSet(1, c: true);
  var c = () {
    var a = 10;
    return a;
  };
  print(c);
  print(c());
}
