import 'model/student.dart';

void main() {
  List<Student> students = [
    Student('Ngà', 22, 'Nam'),
    Student('Ngọc', 26, 'Nữ'),
    Student('Minh', 23, 'Nam'),
    Student('Luận', 223, 'Nam'),
  ];

  for (int i = 0; i < students.length; i++) {
    print('${students[i]}\n');
  }
}
