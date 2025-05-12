/*
  - 객체 선언시 const가 없을 때 : 객체가 별도로 만들어짐.
  - 객체 선언시 const가 붙으면 : 하나의 객체만 만들어짐
*/
void main() {
  Idol idol1 = const Idol('민주당', ['심상정','문재앙']);
  Idol idol2 = const Idol('민주당', ['심상정','문재앙']);

  print(idol1 == idol2);

}

class Idol {
  final String name;
  final List<String> members;

  const Idol(this.name, this.members);

  Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  sayHello() {
    print('안녕하세요 ${name}입니다');
  }

  introduce() {
    print('저희 맴버는 $members입니다');
  }
}