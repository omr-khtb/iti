class Student {
  String name;
  double grade;

  Student(this.name, this.grade);

  void showInfo() {
    print("$name has a grade of $grade");
  }
}

void main() {
  List<Student> students = [
    Student("Alice", 95.5),
    Student("Bob", 88.0),
    Student("Charlie", 91.0)
  ];

  for (var student in students) {
    student.showInfo();
  }
}