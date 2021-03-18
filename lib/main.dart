import 'package:flutter/material.dart';
import 'package:presentation/moi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Presentation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Moi(),
    );
  }
}
