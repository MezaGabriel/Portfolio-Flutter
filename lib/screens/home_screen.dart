import 'package:flutter/material.dart';

// Without State
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontStyle = TextStyle(fontSize: 30, color: Colors.blueGrey);
    int counter = 0;

    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 10.0,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Clicks Counter!',
              style: fontStyle,
            ),
            Text(
              '$counter',
              style: fontStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          counter++;
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
