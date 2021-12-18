void main() {
  Future.delayed(
    Duration(seconds: 1),
    () => 100,
  )
      .then(
        (value) => print(value),
      )
      .catchError(
        (error) => print(error),
      );
}
