import 'student.dart';

class FeeManagementSystem {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void viewStudents() {
    for (var student in students) {
      print('ID: ${student.id}, Name: ${student.name}, Fees: ${student.fees}');
    }
  }

  void updateFees(int id, double newFees) {
    for (var student in students) {
      if (student.id == id) {
        student.fees = newFees;
        print('Fees updated for ID: $id');
        return;
      }
    }
    print('Student with ID: $id not found.');
  }

  void deleteStudent(int id) {
    students.removeWhere((student) => student.id == id);
    print('Student with ID: $id deleted.');
  }

  void searchStudent(String query) {
    bool found = false;
    for (var student in students) {
      if (student.name.toLowerCase().contains(query.toLowerCase()) ||
          student.id.toString() == query) {
        print(
            'ID: ${student.id}, Name: ${student.name}, Fees: ${student.fees}');
        found = true;
      }
    }
    if (!found) {
      print('No student found with name or ID: $query');
    }
  }
}
