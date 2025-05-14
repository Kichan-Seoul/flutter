
void main() {
  A a = A();
  Lecture<A> lecture3 = Lecture(a, 'name');
  Lecture<String> lecture = Lecture('user01@nave.com', 'NAVER');
  lecture.printIdType();

  Lecture<int> lecture2 = Lecture(123, 'NAVER');
  lecture2.printIdType();
}

class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  printIdType() {
    print(id.runtimeType);
  }
}

class A {
  
}