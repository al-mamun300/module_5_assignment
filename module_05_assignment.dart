abstract class Role {
  void displayRole() {}
}

class Person implements Role {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address) {
    name = name;
    age = age;
    address = address;
  }

  @override
  void displayRole() {}
}

//From here Student Code Started

class Student extends Person {
  int studentID;
  String grade;
  List<double> courseScores = [30, 40, 35, 60, 58, 50];
  Student(super.name, super.age, super.address, this.studentID, this.grade) {
    name = name;
    age = age;
    address = address;
    studentID = studentID;
    grade = grade;
  }

  @override
  void displayRole() {
    print("Role : Student");
  }

  void avg() {
    double sum = 0;
    double average = 0;

    for (int j = 0; j < courseScores.length; j++) {
      sum = sum + courseScores[j];
    }

    average = sum / courseScores.length;
    print("Average Score: $average");
  }

  void allStudentInfo() {
    print('Name: $name\nAge: $age\nAddress: $address');
  }
}

//From here Student Code Ended

//From here Teacher Code Started

class Teacher extends Person {
  int teacherID;
  List<String> coursesTaught = ['Physics', 'Chemistry', 'Math', 'Biology'];

  Teacher(super.name, super.age, super.address, this.teacherID) {
    name = name;
    age = age;
    address = address;
    teacherID = teacherID;
  }

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void taughtByTeacher() {
    print("Courses Taught: ");

    for (int i = 0; i < coursesTaught.length; i++) {
      print("-${coursesTaught[i]}");
    }
  }

  void allTeacherInformation() {
    print('Name: $name\nAge: $age\nAddress: $address');
  }
}

//From here Teacher Code Ended

//From here Main Function Started

void main() {
  Student objStudent = Student('AL-Mamun', 20, 'Mirpur, Dhaka', 0002, 'A');
  print("Student Information: ");
  objStudent.displayRole();
  objStudent.allStudentInfo();
  objStudent.avg();
  print("\n");
  Teacher objTeacher = Teacher('Mrs. Smith', 35, '456 Oak St', 009);
  print("Teacher Information: ");
  objTeacher.displayRole();
  objTeacher.allTeacherInformation();
  objTeacher.taughtByTeacher();
}
