import 'package:flutter/material.dart';
import 'package:flutter_stateful_cycle/main.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
        actions: [
          IconButton(
              // onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => const NextPage(),
              //     )),
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(
                      title: 'Flutter Stateful Lifecycle',
                    ),
                  ),
                  (route) => false),
              icon: const Icon(Icons.skip_previous))
        ],
      ),
    );
  }
}
