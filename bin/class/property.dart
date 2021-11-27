void main() {
  Person person = Person('kim', 25);
  print(person.name);
  person._age = 30;
}

class Person {
  String name;
  int _age;

  Person(this.name, this._age);
}
