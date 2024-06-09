
class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
}

class Cat extends Animal {
  String color;
  Cat(String name, int age, this.color) : super(name, age);
  String gd() => 'Name: $name, Age: $age, Color: $color';
}

void main() {
  var myCat = Cat('dragon', 6, 'Black');
  print(myCat.gd());
}