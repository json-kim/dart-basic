void main() {
  mean(3, 6);
  optional(str: '선택적 매개변수', count: 2);
  optional2('선택적 위치 매개변수', 3);
  optional3('매개변수', str: '명명 매개변수', count: 4);
}

double mean(num a, num b) {
  return (a + b) / 2;
}

String optional({String? str, int? count = 10}) {
  return str! * count!;
}

String optional2([String? str, int? count]) {
  return str! * count!;
}

String optional3(String param, {required String str, required int count}) {
  return str * count;
}
