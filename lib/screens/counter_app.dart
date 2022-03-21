import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var counter = 0;

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
    var fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterApp"),
        elevation: 5.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
    );
  }
}

class FloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const FloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.resetFn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () => decreaseFn(),
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
          FloatingActionButton(
            onPressed: () => resetFn(),
            child: const Icon(Icons.restore),
          ),
          FloatingActionButton(
            onPressed: () => increaseFn(),
            child: const Icon(Icons.exposure_plus_1_outlined),
          )
        ],
      ),
    );
  }
}
