void main() {
  // Create a Map (dynamic, dynamic)
  Map person = {
    'name': 'Tony',
    'age': 35,
    'single': false,
  };
  // Show on console
  print(person); // All Object
  print(person['name']); // One Item

  // Create a Map (String, dynamic)
  Map<String, dynamic> person2 = {
    'name': 'Tony',
    'age': 35,
    'single': false,
  };
  // Show on console
  print(person2); // All Object
  print(person2['name']); // One Item
}
