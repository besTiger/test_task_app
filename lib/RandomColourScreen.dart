import 'dart:math';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RandomColourScreen extends StatefulWidget {
  const RandomColourScreen({Key? key}) : super(key: key);

  @override
  RandomColourScreenState createState() => RandomColourScreenState();
}

class RandomColourScreenState extends State<RandomColourScreen> {
  final Random _random = Random();
  Color _color = const Color.fromARGB(42, 42, 42, 42);

  // ignore: public_member_api_docs
  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: const Center(
            child: Text(
              "Hey There",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 42.0,
                color: Colors.black,
                shadows: [
                  Shadow(
                    blurRadius: 8.0,
                    color: Colors.black,
                    offset: Offset(3.0, 3.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}