import 'package:dart_basic/exam_lib.dart';

class DartExam extends Exam {
  int _com = 0;
  int get com => _com;
  set com(int comVal) => _com = comVal;

  DartExam({kor, eng, math, com})
      : _com = com ??= 0,
        super(kor: kor, eng: eng, math: math);

  @override
  int total() {
    return super.total() + _com;
  }

  @override
  double avg() {
    return total() / 4;
  }
}
