class Person {
  static final Person _instance = Person._();
  Person._();

  factory Person.getInstance() {
    return _instance;
  }
}
