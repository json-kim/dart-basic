class Exam {
  // 단 다트에서는 private 멤버에 Getter, Setter 를 동시에 사용하는걸 권장하지 않는다.
  int _kor;
  int get kor => _kor;
  set kor(int korVal) => _kor = korVal;

  int _eng;
  int get eng => _eng;
  set eng(int engVal) => _eng = engVal;

  int _math;
  int get math => _math;
  set math(int mathVal) => _eng = mathVal;

  Exam({kor, eng, math})
      : _kor = kor ?? 0,
        _eng = eng ?? 0,
        _math = math ?? 0;

  int total() {
    return _kor + _eng + _math;
  }

  double avg() {
    return total() / 3;
  }
}
