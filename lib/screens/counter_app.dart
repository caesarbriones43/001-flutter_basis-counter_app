import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    var fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterApp"),
        elevation: 5.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
            FloatingActionButton(
              onPressed: () {
                counter = 0;
                setState(() {});
              },
              child: const Icon(Icons.restore),
            ),
            FloatingActionButton(
              onPressed: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.exposure_plus_1_outlined),
            )
          ],
        ),
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
