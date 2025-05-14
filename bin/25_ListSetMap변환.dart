void main() {
  List<String> blackPink = ['Lose','Lisa','jisu','jeni'];
  print(blackPink.runtimeType);
  print(blackPink.asMap()); // List -> Map 변경
  print(blackPink.toSet()); // List -> Set 변경

  Map blackPinkMap = blackPink.asMap();
  print(blackPinkMap.keys);

  // Map -> List
  print(blackPinkMap.keys.toList());  // 키만 리스트로
  print(blackPinkMap.values.toList());  // 값만 리스트로
  // print(blackPinkMap.toList()); // 안됌. 키 또는 값만 따로

  // List -> Set. 2가지 방법
  Set blackPinkSet =  blackPink.toSet();
  Set blackPinkSet2 = Set.from(blackPink);
  print(blackPinkSet);
  print(blackPinkSet2);

  // set -> List
  print(blackPinkSet2.toList());
}