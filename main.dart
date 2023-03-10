import 'dart:io';
import 'dart:math';

void main() {
  // stdout.write(
  //     "\n Q1: Map<String, double> expenses = {'sun': 3000.0, 'mon': 3000.0,'tue': 3234.0, Check if fri exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.. ");

  // Map<String, double> expenses = {
  //   'sun': 3000.0,
  //   'mon': 3000.0,
  //   'tue': 3234.0,
  // };

  // if (expenses.containsKey("fri")) {
  //   expenses['fri'] = 5000.0;
  // } else {
  //   expenses['fri'] = 5000.0;
  // }

  // print("\n The Updated expenses is : $expenses");

  // stdout.write(
  //     "\n Q2: Write a program in Dart that find the area of a circle using function.");

  // stdout.write("\n Please Enter a Diamter of Circle \n");
  // int? diameter = int.parse(stdin.readLineSync()!);
  // area(diameter);

  // stdout.write(
  //     "\n Q3: Write a program in a dart that implements the Pythagorean theorem using function.");
  // stdout.write(
  //     "\n which side will be found Adjacent(a) , Opposite(b) or Hypotenuse(c)  \n");

  // String? side = stdin.readLineSync();
  // pythagoreanTheorem(side);

  // stdout.write(
  //     "\n Q4:  Write a program in Dart to reverse a String using function.");

  // stdout.write("\nEnter a string\n");
  // String? data = stdin.readLineSync();

  // reverseString(data);

  for (int i = 0; i < 3; i++) {
    String studentName, email, password, phoneNumber;
    print("\nWelcome Student Portal Please Signup ");
    stdout.write("\nEnter your username:\n");
    studentName = stdin.readLineSync()!;

    stdout.write("\nEnter your email:\n");
    email = stdin.readLineSync()!;

    stdout.write("Enter your password:");
    password = stdin.readLineSync()!;

    stdout.write("Enter your phone number optional:");
    phoneNumber = stdin.readLineSync()!;

    List<Map<String, dynamic>> students = [
      // {'studentname': [], 'email': [], 'password': [], 'phoneNumber': []},
      // {'studentname': [], 'email': [], 'password': [], 'phoneNumber': []},
      // {'studentname': [], 'email': [], 'password': [], 'phoneNumber': []},
    ];
    signUp(i, studentName, email, password, students, phoneNumber: phoneNumber);
  }
}

area(diameter) {
  double radius = diameter / 2;

  double area = 3.142 * pow(radius, 2);

  print("\n The area of circle is : $area");
}

pythagoreanTheorem(side) {
  if (side == 'c') {
    stdout.write("\n Please Enter  Adjacent(a) value ");
    int? adjacent = int.parse(stdin.readLineSync()!);

    stdout.write("\n Please Enter  Opposite(b) value ");
    int? opposite = int.parse(stdin.readLineSync()!);
    double Hypotenuse = sqrt(pow(opposite, 2) + pow(adjacent, 2));
    print("\n Hypotenuse: $Hypotenuse");
  } else if (side == 'a') {
    stdout.write("\n Please Enter  Hypotenuse(c) value  \n");
    int? Hypotenuse = int.parse(stdin.readLineSync()!);

    stdout.write("\n Please Enter  Opposite(b) value  \n");
    int? Opposite = int.parse(stdin.readLineSync()!);

    double Adjacent = sqrt(pow(Hypotenuse, 2) + pow(Opposite, 2));
    print("\n Adjacent: $Adjacent");
  } else {
    stdout.write("\n Please Enter  Hypotenuse(c) value  \n");
    int? Hypotenuse = int.parse(stdin.readLineSync()!);

    stdout.write("\n Please Enter  Adjacent(a) value  \n");
    int? Adjacent = int.parse(stdin.readLineSync()!);

    if (Hypotenuse <= Adjacent) {
      stdout.write(
          "\n Hypotenuse Must be Greater than adjacent please enter a Hypotenuse(c) value  \n");
      Hypotenuse = int.parse(stdin.readLineSync()!);
    }

    double Opposite = sqrt(pow(Hypotenuse, 2) - pow(Adjacent, 2));
    print("\nOpposite: $Opposite");
  }
}

reverseString(data) {
  List<String> d1 = (data.split(""));

  List<String> reverseList = [];

  for (var i = (d1.length - 1); i >= 0; i--) {
    reverseList.add(d1[i]);
  }

  stdout.write("\nThe Reverse String is : ");
  print(reverseList.join());
}

signUp(i, studentName, email, password, students, {phoneNumber}) {
  students[i]['studentname'] = studentName;
  students[i]['email'] = email;
  students[i]['password'] = password;
  students[i]['phoneNumber'] = phoneNumber;

  print(students);
  // loginUser(students);
}

void loginUser(users) {
  stdout.writeln();
  print("*** Welcome Login Portal ***");
  stdout.writeln();
  stdout.write("Enter your enter email:");
  String enterEmail = stdin.readLineSync()!;
  stdout.write("Enter your enter password:");
  String enterPassword = stdin.readLineSync()!;
  for (int i = 0; i < 3; i++) {
    if (users[i]?['email'] == enterEmail &&
        users[i]?['password'] == enterPassword) {
      stdout.writeln();
      print("Wellcome: $enterEmail");
      stdout.writeln();
      break;
    } else
      stdout.writeln();
    print("Incorrect email or password. Please try again.");
    stdout.writeln();
    loginUser(users);
    break;
  }
}
