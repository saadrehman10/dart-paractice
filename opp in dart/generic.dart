class Someone {
 String? name;
 String? dob;
 int? age;
 
 Someone._internal(this.name, this.dob);
 factory Someone({String? name , String? dob}){
   dynamic year = dob!.split('/');
   

   return new Someone._internal(name, dob);
 }
}

void main(){
  Someone s = new Someone(name: 'John', dob: '1990/01/01');
  print(s.name);
  print(s.dob);
  print(s.age);
}