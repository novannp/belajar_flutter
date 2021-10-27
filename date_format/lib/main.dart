import 'package:flutter/material.dart';

void main() {
  runApp(const DateTimeApp());
}

class DateTimeApp extends StatelessWidget {
  const DateTimeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Time App',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Date Time App'),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(),
      ),
    );
  }
}
