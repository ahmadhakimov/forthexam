class Course {
  String _t;
  int _d;
  Course(this._t, this._d);


  String get title => _t;
  set title(String title) {
    _t = title;
  }

  int get duration => _d;
  set duration(int duration) {
    _d = duration;
  }
  void displayd() {
    print('This is title of curse: $_t, and this course Duration is: $_d hours');
  }
}

void display(List<Course> courses, int minDuration) {
  courses.where((course) => course.duration > minDuration).forEach((course) => course.displayd());
}
void main() {
  List<Course> courses = [
    Course('Dart ', 40),
    Course('C++ ', 50),
    Course('HTML', 30),
  ];

  int minDuration = 35;
  display(courses, minDuration);
}