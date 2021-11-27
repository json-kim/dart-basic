void main() {
  Person('kim', 25);
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Hero {
  String name;
  int power;

  Hero(this.name, {required this.power});
}

class Knight {
  String _name;
  int _power;

  Knight({required String name, required int power})
      : _name = name,
        _power = power;
}
