import 'dart:io';

void main() {
  print("Enter the first number:");
  var num1 = int.parse(stdin.readLineSync()!);

  print("Enter the second number:");
  var num2 = int.parse(stdin.readLineSync()!);

  print("Enter the third number:");
  var num3 = int.parse(stdin.readLineSync()!);

  if (num1 > num2 && num1 > num3) {
    print("$num1 is the greatest number.");
  } else if (num2 > num1 && num2 > num3) {
    print("$num2 is the greatest number.");
  } else {
    print("$num3 is the greatest number.");
  }

  if (num1 < num2 && num1 < num3) {
    print("$num1 is the lowest number.");
  } else if (num2 < num1 && num2 < num3) {
    print("$num2 is the lowest number.");
  } else {
    print("$num3 is the lowest number.");
  }
}
