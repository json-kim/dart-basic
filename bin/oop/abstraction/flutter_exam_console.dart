import 'dart:convert';
import 'dart:io';

import 'package:dart_basic/abstract_exam_lib.dart';

import 'flutter_exam.dart';

class FlutterExamConsole extends ExamConsole {
  @override
  Exam makeExam() {
    return FlutterExam();
  }

  @override
  void onInput(Exam exam) {
    print('컴퓨터 : ');
    int com = int.parse(stdin.readLineSync(encoding: utf8) ?? '0');

    exam as FlutterExam;
    exam.com = com;
  }

  @override
  void onPrint(Exam exam) {
    print('컴퓨터 : ${(exam as FlutterExam).com}');
  }
}
