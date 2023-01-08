//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP
//TASK   : Design simple domain in OOP using DART classes a)Classes should have some attributes and methods b) Use class c) Use override toString()

class University {
  String name;
  List<Department> departments;

  University(this.name, this.departments);
}

class Department {
  String name;
  List<Course> courses;

  Department(this.name, this.courses);
}

class Course {
  String name;
  int credits;

  Course(this.name, this.credits);
}

class Student {
  String name;
  List<Course> courses;

  Student(this.name, this.courses);

  @override
  String toString() {
    return 'Student: $name, Courses: $courses';
  }
}

void main() {
  // Create a list of courses
  var courses = [
    Course('Math', 3),
    Course('Science', 4),
    Course('History', 2)
  ];

  // Create a list of departments
  var departments = [
    Department('Arts', courses),
    Department('Sciences', courses)
  ];

  // Create a university
  var university = University('My University', departments);

  // Create a student
  var student = Student('John Doe', courses);
  print(student);
}
