int recursionFunction(int value) {
  if (value <= 0) return 1;
  return value * recursionFunction(value - 1);
}

void main() {
  
}
