class Person {
  String? name;
  int? age;

  Person({required this.name, required this.age});
}

Future<List<String>> display(List<Person> people, int minAge) async {
  try {
    List<String> result = people
        .where((person) => person.age! > minAge)
        .map((person) => person.name!)
        .toList();

    return result;
  } catch (e) {
    print('here is eror: $e');
    return [];
  }
}
Future<void> main(List<String> arguments) async {
  List<Person> people = [
    Person(age: 19, name: "Ahmad"),
    Person(name: "Ali", age: 15),
    Person(name: "Muhammad", age: 19),
  ];

  int minAge = 17;
  List<String> result = await display(people, minAge);
  print(result);
}


