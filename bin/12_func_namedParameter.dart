/*
  named parameter : 이름이 있는 파라미터. 순서가 필요 없음
*/
void main() {
  addNumbers(x: 14, y: 22, z: 313);
  addNumbers2(x: 1223, y: 44);
  print(addNumbers3(x: 323, y: 22, z: 33));
  addNumbers4(22, y: 11);
  addNumbers4(100, y: 50);
}

// 파라미터 넣는 곳을 {}중괄호로 묶고, required 키워드를 붙여준다
addNumbers({required int x, required int y, required int z}) {
  int sum = x + y + z;
  print('x = $x');
  print('y = $y');
  print('z = $z');
  print('x + y + z = $sum');
}

addNumbers2({required int x, required int y, int z = 50}) {
  int sum = x + y + z;
  print('x = $x');
  print('y = $y');
  print('z = $z');
  print('x + y + z = $sum');
}

int addNumbers3({required int x, required int y, int z = 50}) {
  int sum = x + y + z;
  print('x = $x');
  print('y = $y');
  print('z = $z');
  print('x + y + z = $sum');
  return sum;
}

int addNumbers4(int x, {required int y, int z = 50}) {
  int sum = x + y + z;
  print('x = $x');
  print('y = $y');
  print('z = $z');
  return sum;
}

int addNumbers5(int x, {required int y, int z = 50}) {
  int sum = x + y + z;
  return sum;
}

// addNumber5를 화살표 함수로
int addNumbers6(int x, {required int y, int z = 50}) => x + y + z;

