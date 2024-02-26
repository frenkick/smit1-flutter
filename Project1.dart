import 'dart:io';

List<Map<String, dynamic>> patients = [];
List<Map<String, dynamic>> doctors = [];

void addPatient() {
  print("Enter patient details:");
  stdout.write("Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Age: ");
  int age = int.parse(stdin.readLineSync()!);

  Map<String, dynamic> patient = {'name': name, 'age': age};
  patients.add(patient);

  print("Patient added successfully!\n");
}

void addDoctor() {
  print("Enter doctor details:");
  stdout.write("Name: ");
  String name = stdin.readLineSync()!;
  stdout.write("Specialization: ");
  String specialization = stdin.readLineSync()!;

  Map<String, dynamic> doctor = {
    'name': name,
    'specialization': specialization
  };
  doctors.add(doctor);

  print("Doctor added successfully!\n");
}

displayPatients() {
  print("\nPatients:");
  for (int i = 0; i < patients.length; i++) {
    print("ID: $i, Name: ${patients[i]['name']}, Age: ${patients[i]['age']}");
  }
  addPatient();
}

void displayDoctors() {
  print("\nDoctors:");
  for (int i = 0; i < doctors.length; i++) {
    print(
        "ID: $i, Name: ${doctors[i]['name']}, Specialization: ${doctors[i]['specialization']}");
  }
  print(doctors);
}

void main() {
  while (true) {
    print("Hospital Management System");
    print("1. Add Patient");
    print("2. Add Doctor");
    print("3. Display Patients $patients");
    print("4. Display Doctors $doctors");

    print("0. Exit");
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
        displayPatients();
        break;
      case 4:
        displayDoctors();
        break;
      case 0:
        print("Exiting the program. Goodbye!");
        return;
      default:
        print("Invalid choice. Please try again.\n");
        break;
    }
  }
}
