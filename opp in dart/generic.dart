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

void main(){
  Someone s = new Someone('John','1990/01/01');
   IntData intData = IntData(10);
  DoubleData doubleData = DoubleData(10.5);
  // Print the data
  print("IntData: ${intData.data}");
  print("DoubleData: ${doubleData.data}");
}