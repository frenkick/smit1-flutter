import 'dart:io';

List<Map<String, dynamic>> patients = [];
List<Map<String, dynamic>> doctors = [];
void main() {
  while (true) {
    print("1 . AddPatient");
    print("2. AddDoctor");
    print("3 . DisplayPatient");
    print("4 . DisplayDoctors");

    print("0 . Exit ");

    stdout.write("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addPatient();
        break;
      case 2:
        addDoctor();
        break;
      case 3:
        displayDoctors();
        break;
      case 4:
        displayPatients();
      case 0:
        print("Goodbye!");
        return;
      default:
        print("Invalid Choice ");
        break;
    }
  }
}

addPatient() {}
addDoctor() {}
displayDoctors() {}
displayPatients() {}
