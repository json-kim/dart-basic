import 'dart_exam.dart';

void main() {
  DartExam exam = DartExam();
  exam.kor = 10;
  exam.eng = 10;
  exam.math = 10;
  exam.com = 10;

  print(exam.total());
}
