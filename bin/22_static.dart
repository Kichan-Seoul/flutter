// static : 호출시 반드시 클래스명.변수명(함수명) 호출.
//          객체명.변수명으로 호출 안됨
void main() {
  Employee hong = Employee('승표');
  Employee lee = Employee('재명');

  hong.name = '승녕';
  hong.printNameBuilding();

  Employee.building = '지하노역장';

  hong.printNameBuilding();
  // hong.printBuilding();
  Employee.printBuilding();
}

class Employee {
  static String? building;
  String name;

  Employee(this.name);

  static printBuilding() {
    print('At $building, we studing');
  }

  printNameBuilding() {
    print('Name is $name. At $building, we studing');
  }
}