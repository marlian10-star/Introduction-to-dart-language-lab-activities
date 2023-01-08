//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP

abstract class Vehicle {
  // Abstract class for the core concept of a vehicle
  int _maxSpeed;
  int _seats;
  String _type;

  void setMaxSpeed(int speed) => _maxSpeed = speed;
  void setSeats(int seats) => _seats = seats;
  void setType(String type) => _type = type;

  int getMaxSpeed() => _maxSpeed;
  int getSeats() => _seats;
  String getType() => _type;

  void startEngine() => print('Engine started');
  void stopEngine() => print('Engine stopped');
}

class Car extends Vehicle {
  // Inheritance: Car class extends the Vehicle class
  int _gears;

  void setGears(int gears) => _gears = gears;
  int getGears() => _gears;

  void shiftGearUp() => print('Shifting gear up');
  void shiftGearDown() => print('Shifting gear down');
}

class PremiumCarFabric {
  // Fabric class for creating premium cars
  static Car createCar(int maxSpeed, int seats, String type) {
    Car car = Car();
    car.setMaxSpeed(maxSpeed);
    car.setSeats(seats);
    car.setType(type);
    car.setGears(6); // Premium cars come with 6 gears
    return car;
  }
}

class BasicCarFabric {
  // Fabric class for creating basic cars
  static Car createCar(int maxSpeed, int seats, String type) {
    Car car = Car();
    car.setMaxSpeed(maxSpeed);
    car.setSeats(seats);
    car.setType(type);
    car.setGears(5); // Basic cars come with 5 gears
    return car;
  }
}

void main(List<String> args) {
  // Parse command line arguments for car configuration
  int maxSpeed = int.parse(args[0]);
  int seats = int.parse(args[1]);
  String type = args[2];

  // Create a car using the fabric classes
  Car car = PremiumCarFabric.createCar(maxSpeed, seats, type);

  // Use getters to print some details about the car
  print('Max speed: ${car.getMaxSpeed()}');
  print('Seats: ${car.getSeats()}');
  print('Type: ${car.getType()}');
  print('Gears: ${car.getGears()}');
}
