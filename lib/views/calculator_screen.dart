import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Display Area
          Container(
            color: Colors.grey[200],
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                '0', // Placeholder for display
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          // Buttons
          Expanded(
            child: Column(
              children: [
                _buildButtonRow(['7', '8', '9', '/']),
                _buildButtonRow(['4', '5', '6', '*']),
                _buildButtonRow(['1', '2', '3', '-']),
                _buildButtonRow(['C', '0', '=', '+']),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow(List<String> labels) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: labels.map((label) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: ElevatedButton(
                onPressed: () {}, // Add logic later
                child: Text(label),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
