/*
  - private : _(언더바)를 붙이면 private
*/
void main() {
  _Idol idol1 = _Idol('블랙핑크', ['지수','리사','제니','로제']);

  idol1._sayHello();
  print(idol1.firstMember);

  idol1.firstMember = 'SEX';
  print(idol1.firstMember);
}

// class 앞에 _를 붙이면 현재파일에서만 사용 가능
class _Idol {
  String name;
  List<String> members;

  _Idol(this.name, this.members);

  _Idol.fromList(List values) : this.members = values[0], this.name = values[1];

  _sayHello() {
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