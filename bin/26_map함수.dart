void main() {
  List<String> blackPink = ['Lose','Lisa','jisu','jeni'];

  Iterable<String> newBlackPink = blackPink.map((x) => '블랙핑크 $x');
  print(newBlackPink);
  print(newBlackPink.toList());

  String number = '13265462';
  List<String> newNumber = number.split('');
  print(newNumber);

  Iterable<String> newNumber2 = newNumber.map((x) => '$x.jpg');
  print(newNumber2.toList());

  Map<String, String> herryPotter = {
    'Herry Potter' : '해리포터',
    'Ron Wisly' : '론 위즐리',
    'Hermione' : '헐마이온느(헤르미온느)'
  };
  print(herryPotter);

  final result = herryPotter.map((key, value) =>
    MapEntry('charactor $key', '해리포터 캐릭터 $value')
  );

  print(result);

  List<String> herryKeyList = herryPotter.keys.map((x) => 'charactor $x').toList();
  List<String> herryValueList = herryPotter.values.map((x) => '캐릭터 $x').toList();

  print(herryKeyList);
  print(herryValueList);

  Set blackPinkSet = {'Lose','Jisu','Jeni','Lisa'};
  final newSet = blackPinkSet.map((x) => '블랙핑크 $x').toSet();
  print(newSet);
}