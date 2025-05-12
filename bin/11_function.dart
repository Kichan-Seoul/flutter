/*
  parameter (argument) : 순서와 갯수가 동일
  optional parameter : 파라미터의 갯수가 미지수일때
*/
void main() {
  function1();
  addNumbers(12, 13, 44); // parameter argument
  addNumbers2(12, 13, 44);
  addNumbers2(1,3,4);
}

function1() {
  print('function1 실행');
}

// 3개의 숫자를 더해서 짝수인지 홀수인지 알려주는 함수
addNumbers(int x, int y, int z) {
  // int x = 10;
  // int y = 24;
  // int z = 39;
  int sum1 = x + y + z;

  if(sum1 % 2 == 0) {
    print('${x}+${y}+${z}의 합은 ${sum1}이며, 이것은 짝수입니다');
  } else {
    print('${x}+${y}+${z}의 합은 ${sum1}이며, 이것은 홀수입니다');
  }
}

// 파라미터가 미지수 일대 대괄호로 묶어준다
// 기본값을 넣어주면 값이 있으면 원래 값으로, 값이 없으면 기본값으로 넣어줌.
addNumbers2(int x, [int y = 23, int z = 44]) {
  int sum1 = x + y + z;
  if(sum1 % 2 == 0) {
    print('${x}+${y}+${z}의 합은 ${sum1}이며, 이것은 짝수입니다');
  } else {
    print('${x}+${y}+${z}의 합은 ${sum1}이며, 이것은 홀수입니다');
  }
}

/*
addNumber3(int x, [int? y, int? z]) {
  int sum1 = x + y + z; // 오류. 숫자 + null이기 때문
}*/
