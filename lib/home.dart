import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'font_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0; // Counter variable

  // Method to increment the counter
  void _incrementCounter() {
    setState(() {
      _counter++; // Increment the counter
    });
  }

  @override
  Widget build(BuildContext context) {
    final fontProvider = Provider.of<FontProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the counter value in bold
            Text(
              '$_counter', // Display the counter
              style: fontProvider.textStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            // Button to increment the counter
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text(
                'Increment Counter',
                style: fontProvider.textStyle.copyWith(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
