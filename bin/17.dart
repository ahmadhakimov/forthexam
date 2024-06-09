
class Employee {
  String name;
  String position;

  Employee({required this.name, required this.position});

  void display() {
    print('Name: $name, Position: $position');
  }
}

List<Employee> fm(List<Employee> employees, bool Function(Employee) condition) {
  List<Employee> filteredEmployees = [];
  for (var employee in employees) {
    if (condition(employee)) {
      filteredEmployees.add(employee);
    }
  }
  return filteredEmployees;
}

void main() {
  var e1 = Employee(name: 'ahmad', position: 'Developer');
  var e2 = Employee(name: 'ali', position: 'doctor');
  var e3 = Employee(name: 'muhamad', position: 'Designer');
  var e4 = Employee(name: 'myhsin', position: 'Developer');

  List<Employee> employees = [e1, e2, e3, e4];
  List<Employee> developers = fm(employees, (employee) => employee.position == 'Developer');
  print('this is our result:');
  for (var employee in developers) {
    employee.display();
  }
}