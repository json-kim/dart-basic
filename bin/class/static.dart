void main() {
  print(Alphabet.vowel);

  print(Alphabet.getNumberOfVowel('hi my name is dart'));
}

class Alphabet {
  static String vowel = 'aeiou';

  static int getNumberOfVowel(String alphabet) {
    return RegExp(r'[aeiou]').allMatches(alphabet).length;
  }
}
