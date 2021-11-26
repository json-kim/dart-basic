void main() {
  final x1 = '최종값';
  // x1 = '수정해볼게요'; //에러 발생

  const x2 = '상수';
  // x2 = '수정해볼게요'; //에러 발생

  // const x3 = DateTime.now(); // 에러 발생

  List list = const [1, 2, 3];
  list[0] = 999; // 에러 발생
}
