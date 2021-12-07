import 'dart:convert';
import 'dart:io';

import 'exam.dart';
import 'exam_list.dart';

abstract class ExamConsole {
  final ExamList _list = ExamList();

  void printExam({int? size}) {
    size ??= _list.size();

    print('------------------------------');
    print('|   성적 출력                  |');
    print('------------------------------');

    for (int i = 0; i < size; i++) {
      Exam exam = _list.get(i);
      int kor = exam.kor;
      int eng = exam.eng;
      int math = exam.math;

      int total = exam.total();
      double avg = exam.avg();

      print('국어 : $kor');
      print('영어 : $eng');
      print('수학 : $math');
      onPrint(exam);
      print('총점 : $total');
      print('평균 : $avg');
      print('------------------------------');
    }
  }

  void input() {
    print('------------------------------');
    print('|   성적 입력                  |');
    print('------------------------------');

    print('국어 : ');
    int kor = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
    print('영어 : ');
    int eng = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
    print('수학 : ');
    int math = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');

    // 객체를 생성하는 부분을 서브클래스에 위임함
    Exam newExam = makeExam();
    newExam.kor = kor;
    newExam.eng = eng;
    newExam.math = math;
    onInput(newExam);

    _list.add(newExam);
  }

  Exam makeExam();

  void onInput(Exam exam);

  void onPrint(Exam exam);
}
