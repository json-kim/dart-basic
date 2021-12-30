void main() {}

class myProgram {
  String _secretContents = '밖에서 손댈 수 없게';
  String get secretContents => _secretContents;
  set secretContents(String content) {
    if (content == '아주 위험한 내용') {
      return;
    }
    _secretContents = content;
  }

  final String neverChange = '변경되어서는 안됨';
}
