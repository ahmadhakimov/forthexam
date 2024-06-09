abstract class Vehicle {
  void start();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car started!');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike started!');
  }
}

void startVehicles(List<Vehicle> vehicles, void Function(Vehicle) startFunction) {
  for (var vehicle in vehicles) {
    startFunction(vehicle);
  }
}

void main() {
  List<Vehicle> vehicles = [Car(), Bike()];

  void startVehicle(Vehicle vehicle) {
    vehicle.start();
  }

  startVehicles(vehicles, startVehicle);
}