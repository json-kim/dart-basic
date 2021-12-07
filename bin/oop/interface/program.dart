import 'a.dart';
import 'b.dart';
import 'x.dart';

void main() {
  A a = A();
  X b = B();
  a.x = b;

  a.printTotal();
}
