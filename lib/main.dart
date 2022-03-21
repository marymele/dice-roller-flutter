import 'package:flutter/material.dart';
import 'dart:math';


int leftDiceNumber=1;
int rightDiceNumber = 1;
void main() {

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Text('Dice Roller'),
          backgroundColor: Colors.grey[800],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}
class _DicePageState extends State<DicePage> {


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceRoll();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                  DiceRoll();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

void DiceRoll (){
  setState(){
  leftDiceNumber=Random().nextInt(6) + 1;
  rightDiceNumber=Random().nextInt(6) + 1;};
}



