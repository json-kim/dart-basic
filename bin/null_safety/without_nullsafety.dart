bool isEmpty(String string) => string.length == 0;

void main() {
  // isEmpty(null);
}

void makeCoffee(String coffee, [String? dairy]) {
  if (dairy != null) {
    print('$coffee with $dairy');
  } else {
    print('Black $coffee');
  }
}

// String missingReturn() {

// }