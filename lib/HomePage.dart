import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage1;
  AssetImage diceImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage1 = one;
      diceImage2 = four;
    });
  }

  void rollDice() {
    int _random1 = (1 + Random().nextInt(6));
    int _random2 = (1 + Random().nextInt(6));

    AssetImage newImage1;
    AssetImage newImage2;

    switch (_random1) {
      case 1:
        newImage1 = one;
        break;
      case 2:
        newImage1 = two;
        break;
      case 3:
        newImage1 = three;
        break;
      case 4:
        newImage1 = four;
        break;
      case 5:
        newImage1 = five;
        break;
      case 6:
        newImage1 = six;
        break;
    }

    switch (_random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }

    setState(() {
      diceImage1 = newImage1;
      diceImage2 = newImage2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        title: Text('Roll the dice'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: diceImage1,
                width: 150.0,
                height: 150.0,
              ),
              Image(
                image: diceImage2,
                width: 150.0,
                height: 150.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: SizedBox(
                  height: 50.0,
                  width: 150.0,
                  child: RaisedButton(
                    elevation: 20.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(20.0)),
                    splashColor: Colors.blueGrey,
                    padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                    color: Colors.black,
                    onPressed: rollDice,
                    child: Text(
                      "Roll it",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
