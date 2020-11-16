int[] intToBinary(int number) {
  int[] rule = new int[8];
  
  for (int i = 7; i >= 0; i--) {
    if (number >= pow(2, i)) {
      rule[i] = 1;
      number -= pow(2, i);
    } else {
      rule[i] = 0;
    }
  }
  return reverse(rule);
}
