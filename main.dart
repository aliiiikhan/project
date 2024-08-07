import 'dart:io';
import 'fms.dart';
import 'student.dart';

void main() {
  FeeManagementSystem fms = FeeManagementSystem();

  while (true) {
    print('\n--- Fee Management System ---');
    print('1. Add Student');
    print('2. View Students');
    print('3. Update Fees');
    print('4. Delete Student');
    print('5. Search Student');
    print('6. Exit');
    stdout.write('Choose an option: ');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addStudent(fms);
        break;
      case 2:
        fms.viewStudents();
        break;
      case 3:
        updateFees(fms);
        break;
      case 4:
        deleteStudent(fms);
        break;
      case 5:
        searchStudent(fms);
        break;
      case 6:
        print('Exiting...');
        return;
      default:
        print('Invalid option. Please try again.');
    }
  }
}

void addStudent(FeeManagementSystem fms) {
  stdout.write('Enter student name: ');
  String name = stdin.readLineSync()!;
  stdout.write('Enter student ID: ');
  int id = int.parse(stdin.readLineSync()!);
  stdout.write('Enter fees: ');
  double fees = double.parse(stdin.readLineSync()!);

  fms.addStudent(Student(name, id, fees));
  print('Student added successfully.');
}

void updateFees(FeeManagementSystem fms) {
  stdout.write('Enter student ID to update fees: ');
  int id = int.parse(stdin.readLineSync()!);
  stdout.write('Enter new fees: ');
  double newFees = double.parse(stdin.readLineSync()!);

  fms.updateFees(id, newFees);
}

void deleteStudent(FeeManagementSystem fms) {
  stdout.write('Enter student ID to delete: ');
  int id = int.parse(stdin.readLineSync()!);

  fms.deleteStudent(id);
}

void searchStudent(FeeManagementSystem fms) {
  stdout.write('Enter student name or ID to search: ');
  String query = stdin.readLineSync()!;
  fms.searchStudent(query);
}
