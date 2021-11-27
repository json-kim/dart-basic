void main() {
  (int a) {
    return a * 2;
  };

  List<int> lst = [1, 2, 3, 4, 5];
  lst.forEach((e) {
    print(e * 2);
  });

  lst.map((e) => e * 2);
}
