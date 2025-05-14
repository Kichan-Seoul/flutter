void main() {
  BoyGroup bts = BoyGroup(name: 'BTS', memberCount: 8);
  bts.sayName();
  bts.sayMemberCoumt();
  print(bts.calculate());

  GirlGroup blackpink = GirlGroup('블랙핑크', 4);
  blackpink.sayName();
  blackpink.sayMemberCoumt();

  bts.sayMale();
  blackpink.sayFemale();

  print('-----------Type Comparison-----------');

  print(bts is Idol);
  print(bts is BoyGroup);
  print(bts is GirlGroup);
}
class Idol {
  String name;
  int memberCount;

  Idol({required this.name, required this.memberCount});

  sayName() {
    print('I am $name');
  }

  sayMemberCoumt() {
    print('$name is $memberCount데스네~~~~');
  }

  int calculate() {
    return memberCount * 2;
  }
}

class BoyGroup extends Idol {
  /*
  BoyGroup(String name, int memberCount)
  : super(name: name, memberCount: memberCount);
  */
  BoyGroup({required super.name, required super.memberCount});

  // 함수선언
  sayMale() {
    print('we are male idol');
  }

  @override
  int calculate() {
    // return super.memberCount * 4;
    return super.calculate() * 4;
  }
}
class GirlGroup extends Idol {
  GirlGroup(String name, int memberCount)
  : super(name: name, memberCount: memberCount);
  // GirlGroup({required super.name, required super.memberCount});

  sayFemale() {
    print('we are female desu');
  }
}