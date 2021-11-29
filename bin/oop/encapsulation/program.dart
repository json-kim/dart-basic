import 'dart:convert';
import 'dart:io';

import 'exam.dart';
import 'exam_list.dart';

void main() {
  ExamList list = ExamList();
  list.init([], 0);

  int menu;
  bool keepLoop = true;

  while (keepLoop) {
    menu = inputMenu();
    switch (menu) {
      case 1:
        list.inputList(list);
        break;
      case 2:
        list.printList1(list);
        break;
      case 3:
        keepLoop = false;
        break;
      default:
        break;
    }
  }
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
