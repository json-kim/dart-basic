import 'dart:convert';
import 'dart:io';

import 'exam.dart';

class ExamList {
  late List<Exam> exams;
  late int current;

  void init(List<Exam> list, int current) {
    exams = list;
    this.current = current;
  }

  void printList1(ExamList list) {
    printList2(list, list.current);
  }

  void printList2(ExamList list, int size) {
    print('------------------------------');
    print('|   성적 출력                  |');
    print('------------------------------');

    List<Exam> exams = list.exams;

    for (int i = 0; i < size; i++) {
      Exam exam = exams[i];
      int kor = exam.kor;
      int eng = exam.eng;
      int math = exam.math;

      int total = kor + eng + math;
      double avg = total / 3;

      print('국어 : $kor');
      print('영어 : $eng');
      print('수학 : $math');
      print('총점 : $total');
      print('평균 : $avg');
      print('------------------------------');
    }
  }

  void inputList(ExamList list) {
    print('------------------------------');
    print('|   성적 입력                  |');
    print('------------------------------');

    print('국어 : ');
    int kor = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
    print('영어 : ');
    int eng = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
    print('수학 : ');
    int math = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');

    Exam newExam = Exam();
    newExam.kor = kor;
    newExam.eng = eng;
    newExam.math = math;

    list.exams.add(newExam);
    list.current++;
  }
}
