import 'dart:convert';
import 'dart:io';

import 'exam_console.dart';

void main() {
  ExamConsole console = ExamConsole();
  //list._current = 3; 접근 불가능

  int menu;
  bool keepLoop = true;

  while (keepLoop) {
    menu = inputMenu();
    switch (menu) {
      case 1:
        console.inputList();
        break;
      case 2:
        console.printList();
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
