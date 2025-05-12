/*
  class : java와 같음. 모든 클래스의 부모는 Object
*/
void main() {
  Idol blackPink = Idol();
  print(blackPink.name);
  print(blackPink.members);

  print(blackPink.sayHello());
  print(blackPink.introduce());
}

class Idol {
  String name = '블랙핑크';
  List<String> members = ['리사','로제', '지수', '제니'];

  sayHello() {
    print('안녕하세요. 블랙핑크데스');
  }

  introduce() {
    print('저희 맴버는 지수, 리사, 로제, 제니 입니다');
  }
}