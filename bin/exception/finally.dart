void main() {
  try {
    throw Exception('예외를 던집니다.');
  } catch (e) {
    print(e);
  } finally {
    print('무조건 실행되는 코드입니다.');
  }
}
