enum PizzaSize {
  S,
  M,
  L,
  XL,
}

enum PizzaSauce {
  none,
  marinara,
  garlic,
}

enum PizzaCrust {
  classic,
  deepDish,
}

// 널 세이프티 적용하기 위해 late사용
class PizzaBuilder {
  late PizzaSize size;
  late PizzaCrust crust;
  late PizzaSauce sauce;
  late List<String> toppings;
  late bool hasExtraCheese;
  late bool hasDoubleMeat;
  late String notes;
}

// 불변 객체
class Pizza {
  final PizzaSize size;
  final PizzaCrust crust;
  final PizzaSauce sauce;
  final List<String> toppings;
  final bool hasExtraCheese;
  final bool hasDoubleMeet;
  final String notes;

  Pizza(PizzaBuilder builder)
      : size = builder.size,
        crust = builder.crust,
        sauce = builder.sauce,
        toppings = builder.toppings,
        hasExtraCheese = builder.hasExtraCheese,
        hasDoubleMeet = builder.hasDoubleMeat,
        notes = builder.notes;
}
