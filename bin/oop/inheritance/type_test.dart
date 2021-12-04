import 'package:dart_basic/exam_lib.dart';

import 'dart_exam.dart';

void main() {
  DartExam exam1 = DartExam(kor: 1, eng: 1, math: 1, com: 1);
  print(exam1.total());

  Exam exam2 = DartExam(kor: 1, eng: 1, math: 1, com: 1);
  print(exam2.total());

  Exam exam = DartExam(kor: 1, eng: 1, math: 1, com: 1);
  (exam as DartExam).com;
}
