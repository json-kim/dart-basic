void main() {
  int a = 1 + 3; // 덧셈
  int b = 4 - 2; // 뺄셈
  int c = -b; // *(-1)
  int d = 2 * 3; // 곱셈
  double e = 3 / 2; // 나눗셈 double 을 리턴
  int f = 3 ~/ 2; // 몫 나눗셈
  int g = 3 % 2; // 나머지 나눗셈
  a++; // 접미사 증가(+1)
  ++a; // 접두사 증가(+1)
  a--; // 접미사 감소(-1)
  --a; // 점두사 감소(-1)
  bool h = 3 == 2; // 같음
  bool i = 3 != 2; // 같지 않음
  bool j = 3 > 2; // 보다 큼
  bool k = 3 < 3; // 보다 작음
  bool l = 3 >= 2; // 보다 크거나 같음
  bool m = 3 <= 2; // 보다 작거나 같음
  a = 5; // 대입 연산자
  bool n = true && false; // 논리적 AND
  bool o = true || false; // 논리적 OR
  bool p = true ^ false; // 논리적 XOR
  int q = ~a; // 비트 보수(0은 1로, 1은 0으로)
  int r = a << 1; // 비트 왼쪽 이동
  int s = a >> 1; // 비트 오른쪽 이동
  int t = h ? a : b; // 3항 연산자 true면 a, false면 b
  int u = null ?? a; // null 일 경우 a
  int v = ([a, b]..sort()).first; // 캐스케이드 연산자
  int? w;
  w ??= 3;

  String x = (findPerson()
        ..age = 25
        ..name = 'Park')
      .toString();

  print(x);
}

Person findPerson() {
  return Person(age: 20, name: 'Kim');
}

class Person {
  int age;
  String name;

  Person({
    required this.age,
    required this.name,
  });

  @override
  String toString() => 'Person(age: $age, name: $name)';
}
