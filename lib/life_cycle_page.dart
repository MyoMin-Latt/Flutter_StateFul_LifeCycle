import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key, required this.number});
  final int number;

  @override
  // ignore: no_logic_in_create_state
  State<MyWidget> createState() {
    debugPrint('No: $number createState');

    return _MyWidgetState();
  }
}

class _MyWidgetState extends State<MyWidget> {
  int number = 0;
  @override
  void initState() {
    super.initState();
    debugPrint('No: ${widget.number} initState');
    number = widget.number;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('No: ${widget.number} didChangeDependencies');
    // number = 2;
  }

  @override
  void deactivate() {
    super.deactivate();
    debugPrint('No: ${widget.number} deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    debugPrint('No: ${widget.number} dispose');
  }

  @override
  void didUpdateWidget(covariant MyWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint('No: ${widget.number} didUpdateWidget');

    if (oldWidget.number != widget.number) {
      number = widget.number;
      debugPrint('Number has changed');
    }
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('No: ${widget.number} build');
    // debugPrint('Number: $number build');
    return TextButton(
        onPressed: () {
          debugPrint('No: ${widget.number} setState');

          setState(() {
            number += 1;
          });
        },
        child: Text(
          number.toString(),
          //  widget.number.toString(),
          style: const TextStyle(fontSize: 50),
        ));
  }
}
