void main() {
  int someValue = 2;

  switch (someValue) {
    case 1:
      // 1...
      break;
    case 2:
      // 2...
      break;
    case 3:
      // 3...
      break;
    default:
      // some...
      break;
  }

  List<Shape> shapes = [
    Circle(),
    Triangle(),
    Rectangle(),
  ];

  for (final shape in shapes) {
    switch (shape.runtimeType) {
      case Circle:
        print('Circle');
        break;
      case Triangle:
        print('Triangle');
        break;
      case Rectangle:
        print('Rectangle');
        break;
      default:
        print('Type ??');
        break;
    }
  }

  List<String> planets = [
    'mercury',
    'venus',
    'earth',
    'mars',
    'jupiter',
    'saturn',
    'uranos',
    'neptune',
  ];

  if (planets.contains('pluto')) {
    print('pluto 도 행성입니다.');
  } else {
    print('pluto 는 행성이 아닙니다.');
  }
}

class Shape {}

class Circle extends Shape {}

class Triangle extends Shape {}

class Rectangle extends Shape {}
