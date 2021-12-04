import 'package:dart_basic/exam_lib.dart';

class DartExam extends Exam {
  int _com = 0;
  int get com => _com;
  set com(int comVal) => _com = comVal;

  @override
  int total() {
    return super.total() + _com;
  }

  @override
  double avg() {
    return total() / 4;
  }
}
