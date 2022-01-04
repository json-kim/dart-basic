class Person {
  final String name;
  final int age;

  Person(this.name, this.age);

  Person.withoutName(int age) : this('홍길동', age);

  Person.withoutAge(String name) : this(name, 20);
}

class SecretPerson {
  SecretPerson._();
}
