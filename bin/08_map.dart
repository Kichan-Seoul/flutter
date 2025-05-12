void main() {
  Map<String, String> students = {
    '20250001': '김무성',
    '20250002': '이준석',
    '20250003': '김문수'
  };

  print(students);
  print(students['20250002']);

  // 맨 뒤에 추가
  students.addAll({'20250004' : '이재명'});
  print(students);

  // 값 변경
  students['20250003'] = 'BTS';
  print(students);

  // 키 & 값 가져오기
  print('keys : ${students.keys}');
  print('values : ${students.values}');
}