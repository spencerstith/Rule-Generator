boolean[] int2bool(int n) {
  boolean[] bits = new boolean[1 << POWER];
  for (int i = bits.length - 1; i >= 0; i--) bits[i] = (n & (1 << i)) != 0;
  return bits;
}

int bool2int(boolean[] boolArr) {
  int r = 0;
  for (int i = 0; i < boolArr.length; i++) r += (boolArr[i] ? 1 : 0) << (boolArr.length - i - 1);
  return r;
}

int bool2int(boolean[] values, int col) {
  boolean[] arr = new boolean[POWER];
  int p = 0;
  for (int i = col - BOUND; i <= col + BOUND; i++) {
    arr[p++] = values[i];
  }
  return bool2int(arr);
}
