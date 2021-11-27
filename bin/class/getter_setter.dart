void main() {
  Person person = Person('park', 25);
  print(person.name);
  print(person.nick);
  person.realAge = 30;
  print(person.age);
}

class Person {
  String _name;
  String get name => _name;

  String get nick => 'Mr.' + _name;

  int age;
  set realAge(inputAge) => age = inputAge - 3;

  Person(this._name, this.age);
}
