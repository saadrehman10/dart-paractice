class Steamsong {
  Stream<String> getUserName() async* {
    await Future.delayed(Duration(seconds: 2));
    yield 'hello';
    await Future.delayed(Duration(seconds: 1));
    yield 'John';
    await Future.delayed(Duration(seconds: 1));
    yield 'Smith';
    
  }
}

void main() {
  Steamsong obj = Steamsong();
  print(obj.getUserName());
}
