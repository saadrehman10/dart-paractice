mixin mixing1 {
  static int? a;
  void dispay() {
    print('this is mixing one');
    print(a);
  }
}

mixin mixing2 {
  int? a;
  void dispay() {
    print('this is mixing two');
    print(a);
  }
}

class Random with mixing1, mixing2 {
  void randmomfunction() {
    print('random');
  }
}

void main() {
  Random random = Random();
  random.a = 500;
  random.dispay();
  random.randmomfunction();
}
