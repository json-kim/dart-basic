import 'dart:async';

void main() {
  // var counterStream =
  //     Stream<int>.periodic(const Duration(seconds: 1), (x) => x).take(15);

  // // counterStream.listen((event) => print(event));

  // var doubleCounterStream = counterStream.map((int x) => x * 2);

  // doubleCounterStream.listen((event) => print('doble stream: $event'));

  // final timedStream = timedCounter(Duration(seconds: 1), 5);

  // timedStream.listen(print);

  listenAfterDelay();
}

// Stream<int> timedCounter(Duration interval, [int? maxCount]) async* {
//   int i = 0;
//   while (true) {
//     await Future.delayed(interval);
//     yield i++;
//     if (i == maxCount) break;
//   }
// }

Stream<int> timedCounter(Duration interval, [int? maxCount]) {
  late StreamController<int> controller;
  Timer? timer;
  int counter = 0;

  void tick(_) {
    counter++;
    controller.add(counter);
    if (counter == maxCount) {
      timer?.cancel();
      controller.close();
    }
  }

  void startTimer() {
    timer = Timer.periodic(interval, tick);
  }

  void stopTimer() {
    timer?.cancel();
    timer = null;
  }

  controller = StreamController<int>(
    onListen: startTimer,
    onPause: stopTimer,
    onResume: startTimer,
    onCancel: stopTimer,
  );

  return controller.stream;
}

Future<void> listenAfterDelay() async {
  var counterStream = timedCounter(const Duration(seconds: 1), 15);
  await Future.delayed(const Duration(seconds: 5));

  await for (final n in counterStream) {
    print(n);
  }
}
