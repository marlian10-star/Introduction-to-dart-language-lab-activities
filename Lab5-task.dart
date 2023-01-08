class Student {
  String name;
  final List<Course> courses;
  int _age;

  Student(this.name, this.courses, this._age);

  int get age => _age;

  @override
  String toString() {
    return 'Student: $name, Age: $age, Courses: $courses';
  }

  void enrollInCourse(Course course) => courses.add(course);

  static Student fromJSON(Map<String, dynamic> json) {
    var courses =
        json['courses'].map((course) => Course.fromJSON(course)).toList();
    return Student(json['name'], courses, json['age']);
  }
}
