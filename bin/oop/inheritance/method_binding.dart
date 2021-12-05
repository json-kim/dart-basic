import 'package:dart_basic/exam_lib.dart';

import 'dart_exam.dart';

void main() {
  totalPrint(Exam(kor: 1, eng: 1, math: 1));
  totalPrint(DartExam(kor: 1, eng: 1, math: 1, com: 1));
}

void totalPrint(Exam exam) {
  // 참조형식이 Exam 이지만, 오버라이드 메서드를 호출할 때는 객체형식에 따라 호출할 메서드가 정해진다.
  int total = exam.total();
  print(total);
}
