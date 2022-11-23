void main() {
  // Sequence
  print('Before the request');

  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data.toUpperCase());
  });

  print('End of program');
}

// This function will return a value after 3 Sec.
Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hello World - 3 seconds';
  });
}
