import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
            style: TextStyle(
              fontFamily: 'Pattaya',
            ),
            ),
          ),
          backgroundColor: Colors.cyan[900],
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void changeDiceNumber() {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
              child: TextButton(
                onPressed: () {
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
          ),
        ],
      ),
    );
  }
}


