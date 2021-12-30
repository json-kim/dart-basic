void main() {
  var list = [
    (a) => a + 1,
    (a) => a + 10,
    (a) => a + 20,
    print,
  ];
  list.fold(0, (a, f) => f(a));
}
