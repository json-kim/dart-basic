class Person {
  int a;
  int b;
  int c;

  Person(this.a, this.b, this.c);

  Person.fromNormal(Map<String, dynamic> json)
      : a = json['a'],
        b = json['b'],
        c = json['c'];

  factory Person.fromFactory(Map<String, dynamic> json) {
    return Person(json['a'], json['b'], json['c']);
  }
}

class Child extends Person {
  // Child(int a, int b, int c) : super(a, b, c);
  Child(int a, int b, int c) : super.fromNormal({'a': a, 'b': b, 'c': c});

  // 팩토리 생성자는 확장한 하위 클래스의 생성자에서 사용 불가
  // Child(int a, int b, int c) : super.fromFactory({'a': a, 'b': b, 'c': c});
}
