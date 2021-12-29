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
  PizzaSize _size;
  PizzaCrust _curst;
  PizzaSauce _sauce;
  List<String> _topping;
  bool _hasExtraCheese;
  bool _hasDoubleMeat;
  String? _notes;

  Pizza(
    this._size,
    this._curst,
    this._sauce,
    this._topping,
    this._hasExtraCheese,
    this._hasDoubleMeat,
    this._notes,
  );
}
