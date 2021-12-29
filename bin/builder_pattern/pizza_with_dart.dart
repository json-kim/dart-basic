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

class Pizza {
  final PizzaSize size;
  final PizzaCrust crust;
  final PizzaSauce sauce;
  final List<String> toppings;
  final bool hasExtraCheese;
  final bool hasDoubleMeat;
  final String notes;

  Pizza({
    required this.size,
    required this.crust,
    required this.sauce,
    required this.toppings,
    this.hasExtraCheese = false,
    this.hasDoubleMeat = false,
    required this.notes,
  });

  Pizza copyWith({
    PizzaSize? size,
    PizzaCrust? curst,
    PizzaSauce? sauce,
    List<String>? toppings,
    bool? hasExtraCheese,
    bool? hasDoubleMeat,
    String? notes,
  }) {
    return Pizza(
        size: size ?? this.size,
        crust: crust ?? this.crust,
        sauce: sauce ?? this.sauce,
        toppings: toppings ?? this.toppings,
        hasExtraCheese: hasExtraCheese ?? this.hasExtraCheese,
        hasDoubleMeat: hasDoubleMeat ?? this.hasDoubleMeat,
        notes: notes ?? this.notes);
  }
}
