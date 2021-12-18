void main() {}

int topLevel = 0;

class SomeClass {
  static int staticField = 0;
}

class OtherClass {
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;

  OtherClass(this.initializingFormal) : initializationList = 0;
}

int tracingFibonacci(int n) {
  int result;
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  return result;
}

int namedParameter({int param = 0}) {
  return param * 2;
}
