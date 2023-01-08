//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP
//TASK   : Design simple domain in OOP using DART classes a)Classes should have some attributes and methods b) Use class c) Use override toString()

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print('$name is eating');
  }

  void sleep() {
    print('$name is sleeping');
  }

  @override
  String toString() {
    return 'Animal: name=$name, age=$age';
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  void bark() {
    print('$name is barking');
  }

  @override
  String toString() {
    return 'Dog: name=$name, age=$age, breed=$breed';
  }
}

void main() {
  Animal a = Animal('Lion', 5);
  a.eat();
  a.sleep();
  print(a);

  Dog d = Dog('Buddy', 3, 'Labrador');
  d.eat();
  d.sleep();
  d.bark();
  print(d);
}
