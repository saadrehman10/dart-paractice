// async programming helps in performing multipule task like fetch data form the internet & etc
//Future in dart help to delya any tak that you want to executer in future for some reason and helps in asyncroinsation in your code

void main() {
  var value = Future.delayed(Duration(seconds: 2), () => 'hello wrold');
  value.then((value) => print(value));
  
}
