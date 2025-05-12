void main() {
  Idol idol1 = Idol('블랙핑크', ['지수','리사','제니','로제']);
  print(idol1.name);
  idol1.introduce();

  Idol idol2 = Idol.fromList([['정국','지민','뷔','진'], 'BTS']);
  print(idol2.members);
  idol2.sayHello();
}

class Idol {
  String name;
  List<String> members;

  Idol(this.name, this.members);

  Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  sayHello() {
    print('안녕하세요 ${name}입니다');
  }

  introduce() {
    print('저희 맴버는 $members입니다');
  }
}