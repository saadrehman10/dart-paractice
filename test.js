function recursion(value){
    if(value <=0 ) {
        return 1;
    }
    return value * recursion(value -1);
}

console.log(recursion(5));