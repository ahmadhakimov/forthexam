class Person {
  String name;
  int age;
  Person({required this.name, required this.age});
  void display() {
    print('Name: $name, Age: $age');
  }
}

class Teacher extends Person {
  String subject;

  Teacher({required String name, required int age, required this.subject}) : super(name: name, age: age);

  @override
  void display() {
    super.display();
    print('Subject: $subject');
  }
}
List<T> fp<T extends Person>(List<T> persons, bool Function(T) condition) {
  List<T> filteredPersons = [];
  for (var person in persons) {
    if (condition(person)) {
      filteredPersons.add(person);
    }
  }
  return filteredPersons;
}

void main() {
  var p1 = Person(name: 'ahmad', age: 30);
  var p2 = Person(name: 'ali', age: 25);
  var t1 = Teacher(name: 'hysain', age: 40, subject: 'Math');
  var t2 = Teacher(name: 'sodiq', age: 35, subject: 'Science');

  List<Person> persons = [p1, p2, t1, t2];

  List<Person> olderThan30 = fp(persons, (person) => person.age > 30);

  print('Persons older than 30:');
  for (var person in olderThan30) {
    person.display();
    if (person is Teacher) {
      print('Subject: ${(person as Teacher).subject}');
    }
  }
}