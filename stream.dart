class Steamsong {
  Stream<String> getUserName() async* {
    await Future.delayed(Duration(seconds: 2));
    yield 'hello';
    await Future.delayed(Duration(seconds: 1));
    yield 'John';
    await Future.delayed(Duration(seconds: 1));
    yield 'Smith';
  }

  Stream<String?> getUserId() {
    return Stream.fromIterable({'helo', 'saad', 'ahmed', null});
  }

  Future<String> getUserId2() {
    return Future.value('saad');
  }
}

void main() async {
  Steamsong obj = Steamsong();
  await for (String name in obj.getUserName()) {
    print(name);
  }
  
  print(obj.getUserId2());
  print(obj.getUserId());
}
