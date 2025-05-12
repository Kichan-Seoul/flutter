void main() {
  Idol idol1 = Idol('블랙핑크', ['지수','리사','제니','로제']);
  print(idol1.name);
  idol1.introduce();

  // idol1.name = 'Sexton';  나중에 바꿀 수 없음

  Idol idol2 = Idol.fromList([['정국','지민','뷔','진'], 'BTS']);
  print(idol2.members);
  idol2.sayHello();
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