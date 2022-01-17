void main() {
  try {
    throw Exception('예외를 던집니다.');
  } catch (e) {
    print('$e 예외를 받았습니다.');
  }

  try {
    throw FormatException('Format 예외를 던집니다.');
  } on Exception catch (e) {
    print('$e 예외를 받았습니다.');
  }
}
