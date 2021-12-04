import 'exam.dart';

class ExamList {
  late List<Exam> _exams;
  late int _current;

  ExamList() {
    _exams = [];
    _current = 0;
  }

  void add(Exam exam) {
    _exams.add(exam);
    _current++;
  }

  Exam get(int index) {
    return _exams[index];
  }

  int size() {
    return _current;
  }
}
