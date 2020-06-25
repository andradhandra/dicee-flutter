import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int num1 = 1;
  int num2 = 1;
  void randomizer() {
    setState(() {
      num1 = Random().nextInt(6) + 1;
      num2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flex(
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
                child: FlatButton(
              child: Image.asset('images/dice$num1.png'),
              onPressed: () => {randomizer(), print('dice1 = $num1')},
            )),
            Expanded(
                child: FlatButton(
              child: Image.asset('images/dice$num2.png'),
              onPressed: () => {randomizer(), print('dice2 = $num2')},
            ))
          ],
        ),
      ],
    );
  }
}
