void main() {
  final myStream = countStream(10).map((event) => 'String $event');

  final subscription = myStream.listen(
    (data) => print('Data: $data'),
    onError: (error) => print(error),
  );

  // subscription.pause();
  // subscription.resume();
  // subscription.cancel();
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  try {
    await for (final value in stream) {
      sum += value;
    }
  } catch (e) {
    return -1;
  }
  return sum;
}
