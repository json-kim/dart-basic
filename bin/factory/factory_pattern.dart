// 팩토리 패턴
// 객체의 생성을 다른 메서드, 클래스에 위임

// 일반적인 생성자
class Person {
  String? name;
  String? post;

  Person(); // 바로 Person 객체가 생성

  Person.fromFirebase(Map<String, dynamic> data)
      : name = data['name'],
        post = data['post'];

  // 컴파일 에러 발생
  // Person.fromJson(Map<String, dynamic> json) {
  //   return Person();
  // }

}

// 팩토리 생성자
class Person2 {
  String? name;
  String? post;
  String? phone;

  Person2();

  Person2.fromNotFactory() : this();

  // factory 키워드를 사용하면 생성자가 아니라 객체를 리턴하는 메서드의 개념
  // factory 키워드를 사용하면 이미 생성된 객체를 리턴해줄 수 있어서 싱글톤 패턴을 사용할 때 유리
  // 반드시 이미 생성된 객체를 리턴하는 것은 아님
  // {} body, => 람다식에서 Person2 객체를 리턴해주어야 함
  // Person2를 구현한 하위 클래스로도 구현 가능
  // 객체의 인스턴스화를 연기한다는 관점
  // 객체의 생성을 위임한다는 관점
  // factory Person2() {
  //   return Person2();
  // }

  factory Person2.fromBody() {
    print('Person2.fromBody');
    return Person2();
  }

  factory Person2.fromLambda() => Person2();

  factory Person2.fromChild() => Child();

  factory Person2.fromJson(Map<String, dynamic> json) {
    if (json['name'] == null) ;
    return Person2();
  }
}

// Person2를 구현한 Child 클래스
class Child implements Person2 {
  // 하위 클래스에서 상위 클래스의 생성자를 호출할 때
  // 네임드 생성자는 호출할 수 없다.
  Child() : super();

  @override
  String? name;

  @override
  String? phone;

  @override
  String? post;
}

void main() {
  Person2 person2 = Person2.fromBody();

  print(person2);
}
