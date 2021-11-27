void main() {
  String s1 = '다트 문자열';
  String s2 = '${s1} \${expression} 구문을 사용할 수 있습니다.';
  String s3 = '변수 하나일 때는 \$s1 이 방법도 가능합니다.';
  String s4 = "큰따옴표도 문자열로 사용가능합니다.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  int i = 5;
  double d = 5.5;
  String si = i.toString();
  String sd = d.toString();

  print(i);
  print(d);
  print(si);
  print(sd);

  bool b1 = true;
  bool b2 = false;

  print(b1);
  print(b2);

  int some_none_bool = 1;
  // if (some_none_bool) {}

  List<int> lst1 = [1, 2, 3];
  List lst2 = [1, 2, 3];
  var lst3 = [1, 2, 3];
  Object lst4 = [1, 2, 3];

  print(lst1);
  print(lst2);
  print(lst3);
  print(lst4);

  Set<String> set = {};
  set.addAll(['oatmeal', 'choclate', 'rainbow']);
  set.add('oatmeal');
  set.remove('chocolate');
  print(set.contains('oatmeal'));
  print(set.containsAll(['chocolate', 'rainbow']));

  Map<String, int> map = {};
  map['Kim'] = 1;
  map['Park'] = 2;
  map['Cho'] = 3;
  print(map);
  print(map['Cho']);
  print(map.keys);
  print(map.values);
}
