void main() {
  // 사용자의 나이를 정의
  int age = 25; // 나이는 25세이다.

  /*
  여러 줄 주석을 사용해봅니다.
  두 마크 사이의 모든 것들은 무시되고 실행됩니다.
  */

  sum(1, 2);

  Alphabet alphabet = Alphabet(vowel: ['a', 'e', 'i', 'o', 'u']);
}

/// 두 값[int]를 입력 받아, 합을 리턴
///
/// ```
/// sum(3, 4) => 7
/// ```
int sum(int a, int b) {
  return a + b;
}

int test2 = 5;

/**
 * 여러줄 문서주석
 * [String]
 * [List]
 * [Alphabet]
 * [test2]
 * [vowel]
 */
class Alphabet {
  /// 모음
  ///
  /// 알파벳 문자 중에서 모음으로만 이루어진 문자열 리스트입니다.
  List<String> vowel;

  Alphabet({
    required this.vowel,
  });
}
