abstract class Vehicle {
  // Abstract class for the core concept of a vehicle
  int _maxSpeed = 0;
  int _seats = 0;
  String _type = '';

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
  int _gears = 0;

  void setGears(int gears) => _gears = gears;
  int getGears() => _gears;

  void shiftGearUp() => print('Shifting gear up');
  void shiftGearDown() => print('Shifting gear down');
}

class PremiumCar extends Car {
  // Class for creating premium cars
  PremiumCar() {
    setGears(6); // Premium cars come with 6 gears
  }
}

class BasicCar extends Car {
  // Class for creating basic cars
  BasicCar() {
    setGears(5); // Basic cars come with 5 gears
  }
}

class ElectricalCar extends Car {
  // Class for creating electrical cars
  ElectricalCar() {
    setGears(1); // Electrical cars come with 1 gear
  }

  @override
  void startEngine() => print('Electrical engine started');
  @override
  void stopEngine() => print('Electrical engine stopped');
}

abstract class CarFactory {
  // Abstract factory class for creating cars
  Car createCar();
}

class PremiumCarFactory extends CarFactory {
  // Concrete factory class for creating premium cars
  @override
  Car createCar() => PremiumCar();
}

class BasicCarFactory extends CarFactory {
  // Concrete factory class for creating basic cars
  @override
  Car createCar() => BasicCar();
}

class ElectricalCarFactory extends CarFactory {
  // Concrete factory class for creating electrical cars
  @override
  Car createCar() => ElectricalCar();
}

void main(List<String> args) {
  // Parse command line arguments for car configuration
  String type = args[0];

  CarFactory factory;
  if (type == 'premium') {
    factory = PremiumCarFactory();
  } else if (type == 'basic') {
    factory = BasicCarFactory();
  } else if (type == 'electrical') {
    factory = ElectricalCarFactory();
  } else {
    print('Invalid car type');
    return;
  }

  // Create a car using the factory
  Car car = factory.createCar();

  // Use the car's methods
  car.startEngine();
  car.shiftGearUp();
  car.shiftGearDown();
  car.stopEngine();
}
