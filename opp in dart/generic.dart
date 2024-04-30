class Someone {
 String? name;
 String? dob;
 int? age;
 
 Someone._internal(this.name, this.dob) , this.age;
 factory Someone({String? name , String? dob}){
   List<String> year = dob!.split('/');
   int? newDob;
   for(int i = 1; i =< year.length ; i++){
     year[i].length == 4 ? newDob = year[i] : null;
   }
   return new Someone._internal(name, dob , age);
 }
}

void main(){
  Someone s = new Someone(name: 'John', dob: '1990/01/01');
 
}