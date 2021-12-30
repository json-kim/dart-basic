import 'dart:math';

var names = <String>['kim', 'park', 'choi'];
var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
var pages = <String, String>{
  'index.html': 'Homepage',
  'robots.txt': 'Hints for web robots',
  'humans.txt': 'We are people, not machine',
};

void main() {
  var names = <String>[];
  names.addAll(['Seth', 'Kathy', 'Lars']);
  print(names is List<String>);

  var someBaseClassFoo = Foo<SomeBaseClass>();
  var someExtendsClassFoo = Foo<SomeExtendsClass>();
  // var someOtherClassFoo = Foo<SomeOtherClass>(); // 에러 발생
}

class SomeBaseClass {}

class SomeOtherClass {}

class SomeExtendsClass extends SomeBaseClass {}

class Foo<T extends SomeBaseClass> {}

T first<T>(List<T> ts) {
  T tmp = ts[0];

  return tmp;
}
