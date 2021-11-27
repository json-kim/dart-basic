void main() {
  print(Coffee.values);

  print(Coffee.americano);
  print(Coffee.latte);
  print(Coffee.cappuccino);

  print(Coffee.americano.index == 0);
  print(Coffee.latte.index == 1);
  print(Coffee.cappuccino.index == 2);

  Coffee menu = Coffee.latte;

  switch (menu) {
    case Coffee.americano:
      print('Menu is americano');
      break;
    case Coffee.latte:
      print('Menu is latte');
      break;
    case Coffee.cappuccino:
      print('Menu is cappuccino');
      break;
    default:
      break;
  }
}

enum Coffee { americano, latte, cappuccino }
