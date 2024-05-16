class Steamsong {
  Stream<dynamic> getUserName() async* {
    await Future.delayed(Duration(seconds: 2), () => 'hello');
    yield 'helloe';
    await Future.delayed(Duration(seconds: 1));
    yield 'John';
    await Future.delayed(Duration(seconds: 1));
    yield 'Smith';
    yield 'Ahmed';
    yield 9339;
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
