import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home:Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(
          child: Text('Dice'),
        )
      ),
      body: DicePage(),
    )
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({ Key? key }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void ChangeNumber(){
    LeftDiceNumber = Random().nextInt(6) + 1;
    RightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
      children: <Widget> [
        Expanded(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton(
              onPressed: (){
                setState(() {
                  ChangeNumber();
                });
              },
              child: Image.asset('images/dice$LeftDiceNumber.png'),
            ),
          )
          
       
        ),
        Expanded(
          child:Padding(
            padding: const EdgeInsets.all(16.0),
            child:TextButton(
              onPressed: (){
                setState(() {
                  ChangeNumber();
                });
              },
              child: Image.asset('images/dice$RightDiceNumber.png')
            )
            
          )
          
        )
      ],)
      );
  }
  
}