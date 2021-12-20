import 'dart:io';

void main() {
  createData().then(print);
}

// Future<String> createData() async {
//   try {
//     final id = await _loadFromDisk();
//     final data = await _fetchNetworkData(id);
//     return data;
//   } on HttpException catch (err) {
//     print('Network error : $err');
//     return '';
//   } finally {
//     print('All done!');
//   }
// }

Future<String> createData() async {
  return _loadFromDisk().then((id) {
    return _fetchNetworkData(id);
  }).then((data) {
    return data;
  }).catchError(
    (err) {
      print('Network error: $err');
      return '';
    },
    test: (err) => err is HttpException,
  ).whenComplete(() {
    print('All done!');
  });
}

Future<int> _loadFromDisk() {
  // 로컬DB 에서 데이터 가져오기
  return Future.delayed(Duration(seconds: 1), () => 1);
}

Future<String> _fetchNetworkData(id) {
  // http 통신
  return Future.delayed(const Duration(seconds: 1), () => '$id : result');
}

Future<int> getTotal(Stream<int> numbers) async {
  int total = 0;

  await for (final value in numbers) {
    total += value;
  }

  return total;
}
