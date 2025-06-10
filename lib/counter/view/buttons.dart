import 'package:flutter/material.dart';

class CounterButtons extends StatelessWidget {
  final onIncrement;
  final onDecrement;

  const CounterButtons({
    super.key,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: onIncrement,
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: onDecrement,
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}