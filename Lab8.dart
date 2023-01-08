import 'dart:io';
import 'dart:convert';
//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP

//  1. Prepare JSON file for your data of your Domain Model
var json = [
  {"id": 1, "name": "John", "age": 30},
  {"id": 2, "name": "Jane", "age": 25},
  {"id": 3, "name": "Bob", "age": 35}
];

// 2. Create for literal string with JSON from task 1
String jsonData =
    '[{"id": 1,"name": "John","age": 30},{"id": 2,"name": "Jane","age": 25},{"id": 3,"name": "Bob","age": 35}]';

// 3. Create list of data from literal string from task 2
List data = jsonDecode(jsonData);

// 4. Create to file with json data
void main() {
  String jsonData =
      '[{"id": 1,"name": "John","age": 30},{"id": 2,"name": "Jane","age": 25},{"id": 3,"name": "Bob","age": 35}]';

  // Write the data to a file
  File file = File('data.json');
  file.writeAsStringSync(jsonData);
}

// 5. Read this file in application (terminal application)
void main() {
  // Read the contents of the file
  File file = File('data.json');
  String jsonData = file.readAsStringSync();

  // Print the contents of the file
  print(jsonData);
}

// 6. Create list of objects from the files.

class Person {
  int id;
  String name;
  int age;

  Person(this.id, this.name, this.age);
}

void main() {
  // Read the contents of the file
  File file = File('data.json');
  String jsonData = file.readAsStringSync();

  // Convert the JSON data to a list of objects
  List data = jsonDecode(jsonData);
  List<Person> people = data
      .map((item) => Person(item['id'], item['name'], item['age']))
      .toList();

  // Print the list of objects
  people
      .forEach((person) => print('${person.name} is ${person.age} years old'));
}
