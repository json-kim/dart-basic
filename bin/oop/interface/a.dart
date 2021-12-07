import 'x.dart';

class A {
  late X _x;
  set x(X x) => this._x = x;

  void printTotal() {
    int total = _x.total();
    print(total);
  }
}
