class Someone{
 String? name;
 String? dob;
 int? age;
 
 
 Someone._internal(this.name, this.dob, this.age) ;
 factory Someone(String? name , String? dob){
   List<String> year = dob!.split('/');
   int? newDob;
   for(int i = 0; i < year.length ; i++){
     year[i].length == 4 ? newDob = int.parse(year[i]) : null;
   }
   newDob = 2024 - newDob;
   return Someone._internal(name, dob, newDob);
 }
}
class IntData {
  int data;
  IntData(this.data);
}
// Creating a class for double
class DoubleData {
  double data;
  DoubleData(this.data);
}

void main(){
  Someone s = new Someone('John','1990/01/01');
 
}