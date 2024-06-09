class Student {
  String name;
  List<int> grades;

  Student({required this.name, required this.grades});
}

List<int> calculate(List<Student> students) {
  return students.map((student) {
    int average =( student.grades.reduce((a, b) => a + b) / student.grades.length).toInt();
    return average;
  }).toList();
}

void main() {
  List<Student> students = [
    Student(name: 'Ahmad', grades: [45, 65, 98]),
    Student(name: 'Ali', grades: [79, 51, 36]),
    Student(name: 'Habib', grades: [88, 90, 94])
  ];

  List<int> averageGrades = calculate(students);
  print(averageGrades);
}