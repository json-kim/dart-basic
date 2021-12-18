void main() {
  String? notAString = null;
  print(notAString?.length?.isEven);

  List list1 = [];
  print(list1);
  list1.length = 4;
  print(list1);
  print(list1.length);
  final list2 = List.empty();
  print(list2);
}

class Weather {
  late int _temparature = _readThermometer();

  int _readThermometer() {
    return 0;
  }
}

void functio({int? a, required int? b, int? c, required int? d}) {}

// Using null safety, incorrectly:
class Coffee {
  String? _temperature;

  void heat() {
    _temperature = 'hot';
  }

  void chill() {
    _temperature = 'iced';
  }

  void checkTemp() {
    if (_temperature != null) {
      print('Ready to serve ' + _temperature! + '!');
    }
  }

  String serve() => _temperature! + ' coffee';
}
