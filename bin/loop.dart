void main() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }

  List<String> list = ['first', 'second', 'third', 'forth'];
  for (String str in list) {
    print(str);
  }

  Set<String> set = {'first', 'second', 'third'};
  for (String str in set) {
    print(str);
  }

  Map<String, int> map = {
    'one': 1,
    'two': 2,
    'three': 3,
  };
  for (final entry in map.entries) {
    print(entry);
  }

  list.forEach((e) {
    print(e);
  });

  int count = 0;
  while (count < 4) {
    print(count);
    count++;
  }

  int money = 100;
  do {
    print(money);
    money++;
  } while (money < 100);

  int num = 0;
  while (true) {
    if (num == 1) {
      continue;
    } else if (num == 3) {
      break;
    }
    num++;
  }
}
