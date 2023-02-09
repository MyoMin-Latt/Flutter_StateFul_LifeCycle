import 'package:flutter/material.dart';
import 'package:flutter_stateful_cycle/life_cycle_page.dart';
import 'package:flutter_stateful_cycle/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Stateful Lifecycle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
              // onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => const NextPage(),
              //     )),
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const NextPage(),
                  ),
                  (route) => false),
              icon: const Icon(Icons.skip_next))
        ],
      ),
      // body: ListView.builder(
      //   itemCount: 100,
      //   itemBuilder: (context, index) =>
      //       SizedBox(height: 500, child: MyWidget(number: index)),
      // ),
      body: Center(
        child: MyWidget(number: _counter),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
