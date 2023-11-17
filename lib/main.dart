import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterScreen()),
                );
              },
              child: Text('Start Counter'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add functionality for other menu options as needed
              },
              child: Text('Other Option'),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int passCount = 0;
  int reworkCount = 0;
  int defectiveCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Products Passed: $passCount'),
            Text('Products Reworked: $reworkCount'),
            Text('Defective Products: $defectiveCount'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate a product passing through
                setState(() {
                  passCount++;
                });
              },
              child: Text('Pass Product'),
            ),
            ElevatedButton(
              onPressed: () {
                // Simulate a product needing rework
                setState(() {
                  reworkCount++;
                });
              },
              child: Text('Rework Product'),
            ),
            ElevatedButton(
              onPressed: () {
                // Simulate a defective product
                setState(() {
                  defectiveCount++;
                });
              },
              child: Text('Defective Product'),
            ),
            SizedBox(height: 20),
            Text('Total Products: ${passCount + reworkCount + defectiveCount}'),
          ],
        ),
      ),
    );
  }
}
