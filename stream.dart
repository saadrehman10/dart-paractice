class Steamsong {
  Stream<dynamic> getUserName() async* {
    await Future.delayed(Duration(seconds: 2),);
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
  await for (var name in obj.getUserName()) {
    print(name);
  }
  obj.getUserId().then((value) => print(value));

  print(obj.getUserId2());
  print(obj.getUserId());
}
