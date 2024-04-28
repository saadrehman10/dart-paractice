
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

 class Random3 {
  void random3funciton() {
    print('random3');
  }

  void random3function2() {
    print('this is second fun of random3');
  }
}

mixin mx on Random3 {
  @override
  void random3funciton() {
    print('This is mixing mx overrideng fun of random4');
  }

  void mixingfunran4() {
    print('This is mixining fun of random4');
  }
}

void main() {
  // Random random = Random();
  // random.a = 500;
  // random.dispay1();
  // random.dispay2();
  // random.randmomfunction();
  Ranodm2 random2 = Ranodm2();
  random2.b = 100;
  random2.dispay1();
  random2.dispay2();
  random2.random2funciton();
  Random3 ran = Random3();
  ran.random3funciton();
  ran.random3function2();
 
}
