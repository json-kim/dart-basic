import 'pizza_with_builder.dart';

void main() {
  final builder = PizzaBuilder()
    ..size = PizzaSize.M
    ..crust = PizzaCrust.classic
    ..sauce = PizzaSauce.marinara
    ..toppings = ['pepperoni', 'olives']
    ..hasExtraCheese = false
    ..hasDoubleMeat = false;

  final pizza = Pizza(builder);
}
