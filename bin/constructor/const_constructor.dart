class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}

void main() {
  Person person1 = const Person('홍길동', 20);
  Person person2 = const Person('홍길동', 20);
  Person person3 = Person('홍길동', 20);
  Person person4 = Person('홍길동', 20);

  print(identical(person1, person2));
  print(identical(person2, person3));
  print(identical(person3, person4));
  print(identical(person4, person1));
}
