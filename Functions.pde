boolean[] int2bool(int n) {
  boolean[] bits = new boolean[DIGITS];
  for (int i = DIGITS - 1; i >= 0; i--) bits[i] = (n & (1 << i)) != 0;
  return bits;
}

int bool2int(boolean[] boolArr) {
  int r = 0;
  for (int i = 0; i < boolArr.length; i++) r += (boolArr[i] ? 1 : 0) << (boolArr.length - i - 1);
  return r;
}

int bool2int(boolean[] values, int i) {
  return bool2int(new boolean[]{values[i - 1], values[i], values[i + 1]});
}
