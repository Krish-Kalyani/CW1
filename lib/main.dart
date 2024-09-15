import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CounterPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key, required this.title});
  final String title;
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  bool _showFirstImage = true;

  // Toggle Image
  void _toggleImage() {
    setState(() {
      _showFirstImage = !_showFirstImage;
    });
  }

  // Increment Counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text('Increment Counter'),
            ),

            // Boolean value
            _showFirstImage
                ? Image.asset('images/Messi.jpeg')
                : Image.asset('images/Lebron.jpeg'),

            // Toggle images Button
            ElevatedButton(
              onPressed: _toggleImage,
              child: const Text('Toggle Image'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
