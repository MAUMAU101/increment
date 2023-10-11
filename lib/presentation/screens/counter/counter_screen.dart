import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    String counterText = clickCounter == 1 || clickCounter == 0 ? 'click' : 'clicks';

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              counterText,
              style: const TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter += 1;
              });
            },
            child: const Icon(Icons.plus_one),
          ),
          const SizedBox(height: 18),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (clickCounter > 0) {
                  clickCounter--;
                }
              });
            },
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 18),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
