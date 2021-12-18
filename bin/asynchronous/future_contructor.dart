void main() {
  final myFuture = Future(() {
    print('in future');
    return 12;
  });

  Future.delayed(
    Duration(seconds: 1),
    () => print('future delayed'),
  );

  print('end of main');
}
