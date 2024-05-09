import 'dart:convert';

class nullValeus {
  String? hello;
  List<int?>? newword;
}

void main() {
  nullValeus obj1 = new nullValeus();
  obj1.newword = obj1.newword ?? [1,234,null,null, 32];


}
