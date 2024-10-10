int gcd(int a, int b) {
  return b == 0 ? a : gcd(b, a % b);
}

int lcm(int a, int b) {
  return (a * b) ~/ gcd(a, b);
}

void main() {
  int bill1 = 12;
  int bill2 = 8;

  print("Bilangan 1 : $bill1");
  print("Bilangan 2 : $bill2");
  print("KPK $bill1 dan $bill2 = ${lcm(bill1, bill2)}");
}