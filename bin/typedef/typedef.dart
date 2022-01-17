typedef IntList = List<int>;

typedef Results<T> = Result<List<T>>;

class Result<T> {
  final T data;

  Result(this.data);
}
