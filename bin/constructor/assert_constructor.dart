class Adult {
  final String name;
  final int age;

  Adult(this.name, this.age)
      : assert(name.length > 2),
        assert(age > 20);
}

void main() {
  Adult adult1 = Adult('홍길', 29);
}
