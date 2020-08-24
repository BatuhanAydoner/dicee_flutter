import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text("Dicee"),
        ),
      ),
      body: DiceePage(),
    ),
  ));
}

class DiceePage extends StatefulWidget {
  @override
  _DiceePageState createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset("images/dice$leftDiceNumber.png"))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset("images/dice$rightDiceNumber.png")))
        ],
      ),
    );
  }

  // Changes values of leftDiceNumber and rightDiceNumber
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = 1 + Random().nextInt(5);
      rightDiceNumber = 1 + Random().nextInt(5);
    });
  }
}
