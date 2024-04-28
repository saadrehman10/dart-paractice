mixin mixing1 {
  static int? a;
  int? b;
  void dispay1() {
    print('this is mixing one');
    print(a);
  }

  void setValue() {}
}

mixin mixing2 {
  int? a;
  void dispay2() {
    print('this is mixing two');
    print(a);
  }
}

class Random with mixing1, mixing2 {
  void randmomfunction() {
    print('random');
  }
}

class Ranodm2 extends Random {
  void random2funciton() {
    print('random2');
  }
}

void main() {
  Random random = Random();
  random.a = 500;
  random.dispay1();
  random.dispay2();
  random.randmomfunction();
  Ranodm2 random2 = Ranodm2();
  random2.b = 100;
  random.dispay1();
  random2.dispay2();
  random2.random2funciton();
}
