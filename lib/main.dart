import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  final Random _random = Random();
  Color _color = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
          GestureDetector(
              child: Container(
                color: _color,
                child: Center(
                  child: Text(
                    'Hey there',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                // Change the color of the container beneath
                setState(() {
                  _color = Color.fromRGBO(
                      _random.nextInt(256),
                      _random.nextInt(256),
                      _random.nextInt(256),
                      1.0
                  );
                });
              })
      ),
    );
  }
}