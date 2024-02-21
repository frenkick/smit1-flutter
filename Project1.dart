import 'dart:io';

List<Map<String, dynamic>> patients = [];
List<Map<String, dynamic>> doctors = [];
List<Map<String, dynamic>> appointments = [];

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

void scheduleAppointment() {
  print("Enter appointment details:");
  stdout.write("Patient ID: ");
  int patientId = int.parse(stdin.readLineSync()!);
  stdout.write("Doctor ID: ");
  int doctorId = int.parse(stdin.readLineSync()!);
  stdout.write("Date: ");
  String date = stdin.readLineSync()!;

  Map<String, dynamic> appointment = {
    'patientId': patientId,
    'doctorId': doctorId,
    'date': date
  };
  appointments.add(appointment);

  print("Appointment scheduled successfully!\n");
}

void displayPatients() {
  print("\nPatients:");
  for (int i = 0; i < patients.length; i++) {
    print("ID: $i, Name: ${patients[i]['name']}, Age: ${patients[i]['age']}");
  }
  print("");
}

void displayDoctors() {
  print("\nDoctors:");
  for (int i = 0; i < doctors.length; i++) {
    print(
        "ID: $i, Name: ${doctors[i]['name']}, Specialization: ${doctors[i]['specialization']}");
  }
  print("");
}

void displayAppointments() {
  print("\nAppointments:");
  for (int i = 0; i < appointments.length; i++) {
    print(
        "ID: $i, Patient: ${patients[appointments[i]['patientId']]['name']}, Doctor: ${doctors[appointments[i]['doctorId']]['name']}, Date: ${appointments[i]['date']}");
  }
  print("");
}

void main() {
  while (true) {
    print("Hospital Management System");
    print("1. Add Patient");
    print("2. Add Doctor");
    print("3. Schedule Appointment");
    print("4. Display Patients");
    print("5. Display Doctors");
    print("6. Display Appointments");
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
        scheduleAppointment();
        break;
      case 4:
        displayPatients();
        break;
      case 5:
        displayDoctors();
        break;
      case 6:
        displayAppointments();
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
