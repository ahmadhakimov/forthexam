class Car {
  String make;
  String model;
  Car.Carname(Map<String, String> map): make = map['make'] ?? '',model = map['model'] ?? '';
}

List<Car> display(List<Map<String, String>> maps) {
  return maps.map((map) => Car.Carname(map)).toList();
}

void main() {
  List<Map<String, String>> carMaps = [
    {'make': 'Toyota', 'model': 'Corolla'},
    {'make': 'Honda', 'model': 'Civic'},
    {'make': 'Ford', 'model': 'Mustang'}
  ];

  List<Car> cars = display(carMaps);

  for (var car in cars) {
    print('Car: ${car.make} ${car.model}');
  }
}