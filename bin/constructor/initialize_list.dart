class Person {
  final String name;
  final int age;

  Person(String name, int age)
      : name = name.toLowerCase(),
        age = age ~/ 10 * 10;

  // 에러 발생
  // Person(String name, int age) {
  //   this.name = name;
  //   this.age = age;
  // }
}
