void main() {
  BoyGroup bts = BoyGroup('BTS');
  GirlGroup twice = GirlGroup('TWICE');

  bts.sayName();
  twice.sayName();

  print(bts is IdolInterface);
  print(bts is BoyGroup);
}
abstract class IdolInterface {
  String name;
  IdolInterface(this.name);
  sayName();
}

class BoyGroup implements IdolInterface {
  String name;
  BoyGroup(this.name);

  @override
  sayName() {
    print('name is $name');
  }
}

class GirlGroup implements IdolInterface {
  String name;
  GirlGroup(this.name);

  @override
  sayName() {
    print('name is $name');
  }
}