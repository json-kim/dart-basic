void main() {}

class DesignPattern {
  static DesignPattern _instance = DesignPattern._();
  static DesignPattern get instance => _instance;

  // 생성자를 만드는 경우, 기본 생성자가 존재하지 않는다.
  // 네임드 생성자 만들어주면 기본 생성자는 만들어지지 않는다.
  // 네임드 생성자의 이름을 _(...) 처럼 private하게 만들어주면 객체를 생성하지 못하게 막을 수 있다.
  DesignPattern._();
}
