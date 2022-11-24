import 'package:flutter/material.dart';

// With State
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontStyle = TextStyle(fontSize: 30, color: Colors.blueGrey);

    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 10.0,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Click Counter!',
              style: fontStyle,
            ),
            Text(
              '$counter',
              style: fontStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () => increaseFn(),
          child: const Icon(
            Icons.plus_one,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 40),
        FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () => resetFn(),
          child: const Icon(
            Icons.remove_circle_outline,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 40),
        FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () => decreaseFn(),
          child: const Icon(
            Icons.exposure_minus_1,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
