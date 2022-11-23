void main() {
  // Create empty list
  List numbersEmpty = [];
  // Create number list
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Create name list
  List<String> names = ['Tony', 'Stark'];
  // Create null list
  List? numbersNull = null;

  // Add a number to a List
  numbers.add(11);

  // Generate a List
  final moreNumbers = List.generate(100, (int index) => 10);

  // Show on console
  print(numbersEmpty);
  print(numbers);
  print(names);
  print(numbers[0]);
  print(moreNumbers);
}
