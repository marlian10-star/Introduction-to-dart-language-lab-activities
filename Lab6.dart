//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP

// Abstract class representing the core concept of a Vehicle
abstract class Vehicle {
  int gears = 0;
  int maxSpeed = 0;
  int seats = 0;
  String type = '';

  // Private method to execute internal function
  void _startEngine() {
    print('Starting engine...');
  }

  // Method to be implemented by subclasses
  void drive();
}

// Class representing a Car, which inherits from the Vehicle class
class Car extends Vehicle {
  Car(int gears, int maxSpeed, int seats, String type) {
    this.gears = gears;
    this.maxSpeed = maxSpeed;
    this.seats = seats;
    this.type = type;
  }

  @override
  void drive() {
    _startEngine();
    print('Driving car...');
  }
}

// Interface representing features that can be added to a car
abstract class CarFeatures {
  void addSunroof();
  void addGPS();
  void addEntertainmentSystem();
}

// Class representing a PremiumCar, which inherits from the Car class and
// implements the CarFeatures interface
class PremiumCar extends Car implements CarFeatures {
  PremiumCar(int gears, int maxSpeed, int seats, String type)
      : super(gears, maxSpeed, seats, type);

  @override
  void addSunroof() {
    print('Adding sunroof...');
  }

  @override
  void addGPS() {
    print('Adding GPS...');
  }

  @override
  void addEntertainmentSystem() {
    print('Adding entertainment system...');
  }
}

// Class representing a BasicCar, which also inherits from the Car class
class BasicCar extends Car {
  BasicCar(int gears, int maxSpeed, int seats, String type)
      : super(gears, maxSpeed, seats, type);
}

// Fabric class with method to create a car
class CarFabric {
  static Car createCar(
      String fabricType, int gears, int maxSpeed, int seats, String type) {
    if (fabricType == 'premium') {
      return PremiumCar(gears, maxSpeed, seats, type);
    } else if (fabricType == 'basic') {
      return BasicCar(gears, maxSpeed, seats, type);
    } else {
      throw Exception('Invalid fabric type');
    }
  }
}

void main() {
  // Read configuration from command line
  var gears = 4;
  var maxSpeed = 180;
  var seats = 5;
  var type = 'cabrio';
  var fabricType = 'premium';

  // Create car using fabric method
  var car = CarFabric.createCar(fabricType, gears, maxSpeed, seats, type);

  // Print details about the car
  print('Car gears: ${car.gears}');
  print('Car max speed: ${car.maxSpeed}');
  print('Car seats: ${car.seats}');
  print('Car type: ${car.type}');
}
