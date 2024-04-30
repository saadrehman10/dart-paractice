class Someone {
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
   print(newDob);
   return Someone._internal(name, dob );
 }
}

void main(){
  Someone s = new Someone('John','1990/01/01');
 
}