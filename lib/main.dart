import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter and Image Toggle App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CounterImageTogglePage(),
    );
  }
}

class CounterImageTogglePage extends StatefulWidget {
  @override
  _CounterImageTogglePageState createState() => _CounterImageTogglePageState();
}

class _CounterImageTogglePageState extends State<CounterImageTogglePage> {
  int _counter = 0;
  bool _isFirstImage = true;

  // Images
  final String _image1 = 'assets/image1.jpeg'; // Ensure you add images to assets
  final String _image2 = 'assets/image2.jpeg';

  // Method to increment counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Method to toggle image
  void _toggleImage() {
    setState(() {
      _isFirstImage = !_isFirstImage;
    });
  }

  // Method to reset both counter and image
  void _reset() {
    setState(() {
      _counter = 0;
      _isFirstImage = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter and Image Toggle App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display counter
            Text(
              'Counter: $_counter',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),

            // Increment Button
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Text('Increment'),
            ),
            SizedBox(height: 20),

            // Display Image
            Image.asset(_isFirstImage ? _image1 : _image2),
            SizedBox(height: 20),

            // Toggle Image Button
            ElevatedButton(
              onPressed: _toggleImage,
              child: Text('Toggle Image'),
            ),
            SizedBox(height: 20),

            // Reset Button
            ElevatedButton(
              onPressed: _reset,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}