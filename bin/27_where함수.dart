/*
  - where()함수 : 결과가 true인거만 가져옴(filter와 동일)
*/
void main() {
  List<Map<String, String>> people = [
    {'name' : 'KICHAN', 'group' : '일해회'},
    {'name' : 'ILLHWAN', 'group' : '일해회'},
    {'name' : 'HEAMIN', 'group' : '페이스'},
    {'name' : 'SUBI', 'group' : '페이스'}
  ];
  print(people);

  final GangNam = people.where((x) => x['group'] == '일해회');
  final face = people.where((x) => x['group'] == '페이스');

  print(GangNam);
  print(face);
}