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

  // stdout.write("\n Q4: Q5: Write a program in Dart to signup Student\n.");

  // signUp();

  // stdout.write(
  //     "\n Q6:  Write a program in Dart to calculate power of a certain numbers using function only");

  // stdout.write("\nEnter the base:\n ");
  // num? base = int.parse(stdin.readLineSync()!);

  // stdout.write("\nEnter the exponent: \n");
  // num? exponent = int.parse(stdin.readLineSync()!);

  // calculatePower(base, exponent);
  stdout.write(
      "\n Q7: Write a function to calculate number of vowels and consonant in a String");

  stdout.write("Enter your couple of words :");
  String? words = stdin.readLineSync()!;
  words = words.toLowerCase();
  calculateConsonantVowel(words);
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

signUp() {
  String studentName, email, password, phoneNumber;

  List<Map<String, dynamic>> students = [];
  for (int i = 0; i < 3; i++) {
    print("\nWelcome Student Portal Please Signup ");
    stdout.write("\nEnter your username:\n");
    studentName = stdin.readLineSync()!;

    stdout.write("\nEnter your email:\n");
    email = stdin.readLineSync()!;

    stdout.write("Enter your password:");
    password = stdin.readLineSync()!;

    stdout.write("Enter your phone number optional:");
    phoneNumber = stdin.readLineSync()!;

    var data = {
      'studentname': studentName,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
    };

    students.add(data);
  }

  loginStudent(students);
}

loginStudent(students) {
  print("\n Welcome Student Login Portal ");

  stdout.write("\nEnter your enter email:\n");
  String studentEmail = stdin.readLineSync()!;

  stdout.write("Enter your enter password:");
  String studentPassword = stdin.readLineSync()!;

  for (int j = 0; j < 3; j++) {
    if (students[j]?['password'] == studentPassword &&
        students[j]?['email'] == studentEmail) {
      print("\n Succesfully Student  Login Welocome : $studentEmail");
      stdout.writeln();
      break;
    } else
      stdout.writeln();
    print("Incorrect email or password. Please try again.");
    stdout.writeln();
    loginStudent(students);
    break;
  }
}

calculatePower(base, exponent) {
  int? result = 1;
  while (exponent != 0) {
    result = (result! * base) as int?;
    --exponent;
  }
  print(" power: ${result}");
}

calculateConsonantVowel(words) {
  int vowel = 0;
  int consonant = 0;

  for (int i = 0; i < words.length; i++) {
    if (words[i] == "a" ||
        words[i] == "e" ||
        words[i] == "i" ||
        words[i] == "o" ||
        words[i] == "u") {
      vowel++;
    } else {
      consonant++;
    }
  }
  print("\n Total consonant in a words are: ${consonant}");
  print("Total vowels in words are: ${vowel}");
}
