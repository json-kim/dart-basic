import 'package:dart_basic/abstract_exam_lib.dart';

class FlutterExam extends Exam {
  int _com;
  int get com => _com;
  set com(comVal) => _com = comVal;

  FlutterExam({kor, eng, math, com})
      : _com = com ??= 0,
        super(kor: kor, eng: eng, math: math);

  @override
  double avg() {
    return total() / 4;
  }

  @override
  int total() {
    return eng + kor + math + _com;
  }
}
