/*
  - getter / setter
    변수처럼 사용
    : 단순한 값을 넣거나 가져올 때 사용
    :
*/
void main() {
  Idol idol1 = Idol('블랙핑크', ['지수','리사','제니','로제']);

  print(idol1.firstMember);

  idol1.firstMember = 'SEX';
  print(idol1.firstMember);
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

  // getter
  String get firstMember {
    return members[0];
  }

  // Setter : 무조건 하나의 파라미터만 받을 수 있다
  set firstMember(String name) {
    this.members[0] = name;
  }
}