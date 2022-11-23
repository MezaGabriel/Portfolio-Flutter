void main() async {
  // Start Sequence
  print('Before the request');

  // Await task
  final data = httpGet('https://api.nasa.com/aliens');
  print(data);

  // Async task
  final name = await getName('10');

  /*Other Examples*/
  // print(getName('10')); // Basic
  // getName('10').then((data) => print(data)); // After the Stack is free

  // End Sequence
  print('End of program');
}

// Future Function
Future<String> getName(String id) async {
  return '$id - Tony';
}

// This function will return a value after 3 Sec.
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hello World - 3 seconds';
  });
}
