class Steamsong {
  Stream<String> getUserName() async* {
    await Future.delayed(Duration(seconds: 1));
    yield 'hello';
  }
}

void main() {}
