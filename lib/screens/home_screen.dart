import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fontSize30 = const TextStyle(fontSize: 30);
    var counter = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterApp"),
        elevation: 5.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("Counter: ${counter}");
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Number of Clicks', style: fontSize30),
            Text('10', style: fontSize30),
          ],
        ),
      ),
    );
  }
}
