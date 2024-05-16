import 'dart:async';

class Steamsong {
  String? _name;
  String? emoje;

  Steamsong(this.emoje);
  set name(value) => _name = value;
  String? get name => _name;
  static Stream<dynamic> getUserName() async* {
    await Future.delayed(
      Duration(seconds: 2),
    );
    yield 'helloe';
    await Future.delayed(Duration(seconds: 1));
    yield 'John';
    await Future.delayed(Duration(seconds: 1));
    yield 'Smith';
    yield 'Ahmed';
    yield 9339;
  }

  Stream<dynamic> secondfunc(int? value1, int? value2) async* {
    yield 'hello';
    yield value1 != null && value2 != null
        ? value2 + value2
        : Future.delayed(Duration(milliseconds: 300), () => 'it was null');
    String emo = this.emoje! * 10;
    yield emo;
    print('=====');
    //  Future.delayed(Duration(seconds: 1), () async*{
    //   yield 'emo';
    // });
    String value = await Future.delayed(
        Duration(seconds: 1), () => 'Future awaited value');

    yield value;
  }

  Stream<String?> getUserId() {
    return Stream.fromIterable({'helo', 'saad', 'ahmed', null});
  }

  Future<String> getUserId2() {
    return Future.value('saad');
  }
}
class SingleAndMultiSubscriptionStream {
  dynamic streamfunction(){
   StreamController<dynamic> controller = StreamController<dynamic>.broadcast();
   Stream stream = controller.stream;
    return stream;
  }
}

void main() async {
  // Steamsong obj = Steamsong('🔥');
  // await for (var name in obj.getUserName()) {
  //   print(name);
  // }
  // print('-----');
  // await obj.secondfunc(null, null).forEach((value) {
  //   print('-----');
  //   if (value is Future) {
  //     value.then((variable) => print(variable));
  //   } else if (value is! Future) {
  //     print(value);
  //   }
  // });

  // print('------');
  // await Steamsong.getUserName().forEach((element) {
  //   print(element);
  // });
  // print('------');

  // await Steamsong.getUserName().forEach((element) {
  //   print(element);
  // });
  // print(obj.getUserId2());
  // print(obj.getUserId());
  SingleAndMultiSubscriptionStream obj1 = SingleAndMultiSubscriptionStream();
  obj1.streamfunction().listen((value){
    print('hello world');
  });
  





}
