/*
  - 집합 자료형 : List, Set, Map

  * List type(java와 동일)
*/
void main() {
  List<String> name = ['고아', '안녕', '나다'];
  List<int> numbers = [1,2,3,4,5];
  print(name);
  print(numbers[2]);
  print('List 길이 : ${name.length}');

  name.add('HATE');
  print(name);

  name.remove('고아');
  print(name);
}