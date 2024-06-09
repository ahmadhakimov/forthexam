class Animal {
  String name;
  int age;

  Animal({required this.name, required this.age});
}

class Dog extends Animal {
  String breed;

  Dog({required String name, required int age, required this.breed})
      : super(name: name, age: age);

  void funcresult() {
    String localVariable = "Local variable";
    print("Name: $name, Age: $age");
    print("Breed: $breed");
    print("Outside the class: $globalVariable");
  }
}
String globalVariable = "Global variable";

void main() {
  Dog myDog = Dog(name: "Buddy", age: 3, breed: "Labrador");
  myDog.funcresult();
}