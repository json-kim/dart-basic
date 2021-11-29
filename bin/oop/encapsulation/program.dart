import 'dart:convert';
import 'dart:io';

import 'exam.dart';
import 'exam_list.dart';

void main() {
  ExamList list = ExamList();
  list.exams = [];
  list.current = 0;

  int menu;
  bool keepLoop = true;

  while (keepLoop) {
    menu = inputMenu();
    switch (menu) {
      case 1:
        inputList(list);
        break;
      case 2:
        printList1(list);
        break;
      case 3:
        keepLoop = false;
        break;
      default:
        break;
    }
  }
}

void printList1(var list) {
  printList2(list, list.current);
}

void printList2(var list, int size) {
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

int inputMenu() {
  print('------------------------------');
  print('|   메인 메뉴                  |');
  print('------------------------------');
  print('  1. 성적 입력');
  print('  2. 성적 출력');
  print('  3. 종료');
  int menu = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');
  return menu;
}
