import 'package:flutter/material.dart';
import 'package:increment/presentation/components/Custom_Button.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int clickCounter = 0; // Variable to keep track of the number of clicks

  @override
  Widget build(BuildContext context) {
    String counterText =
        clickCounter == 1 || clickCounter == 0 ? 'click' : 'clicks'; // Determine whether to display 'click' or 'clicks' based on the value of clickCounter

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter', // Display the value of clickCounter
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text(
              counterText, // Display the text 'click' or 'clicks'
              style: const TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          customeButton(
            icon: Icons.plus_one,
            onPressed: () {
              setState(() {
                clickCounter += 1; // Increment the value of clickCounter by 1 when the button is pressed
              });
            },
          ),
          const SizedBox(height: 18),
          customeButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              setState(() {
                clickCounter -= 1; // Decrement the value of clickCounter by 1 when the button is pressed
              });
            },
          ),
          const SizedBox(height: 18),
          customeButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              setState(() {
                clickCounter = 0; // Reset the value of clickCounter to 0 when the button is pressed
              });
            },
          ),
        ],
      ),
    );
  }
}
