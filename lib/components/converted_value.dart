import 'package:flutter/material.dart';

class ConvertedValueDisplay extends StatelessWidget {
  final double result;

  const ConvertedValueDisplay({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return Text(
      '₹${result.toStringAsFixed(2)}',
      style: const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: Colors.greenAccent,
      ),
    );
  }
}
