import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class Simple extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Simple> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage HomeImage1,HomeImage2;
  int dice1 = 0;
  int dice2 = 0;

  @override
  void initState(){
    super.initState();
    setState(() {
      HomeImage1 = one;
      HomeImage2 = one;
    });
  }

  void diceChanger(){
    int random = (1+Random().nextInt(6));
    int anotherRandom = (1+Random().nextInt(6));
    AssetImage firstImage;
    AssetImage secondImage;
    switch (random) {
      case 1:
        firstImage = one;
        break;
      case 2:
        firstImage = two;
        break;
      case 3:
        firstImage = three;
        break;
      case 4:
        firstImage = four;
        break;
      case 5:
        firstImage = five;
        break;
      case 6:
        firstImage = six;
        break;
    }
    switch (anotherRandom) {
      case 1:
        secondImage = one;
        break;
      case 2:
        secondImage = two;
        break;
      case 3:
        secondImage = three;
        break;
      case 4:
        secondImage = four;
        break;
      case 5:
        secondImage = five;
        break;
      case 6:
        secondImage = six;
        break;
    }
    setState(() {
      HomeImage1 = firstImage;
      HomeImage2 = secondImage;
      dice1 = dice1 + random;
      dice2 = dice2 + anotherRandom;
    });
  }

  void Winner() async {
      await animated_dialog_box.showRotatedAlert(
          title: Center(child: Text("Results", style: TextStyle(fontSize: 25.0),)), // IF YOU WANT TO ADD
          context: context,
          firstButton: MaterialButton(
            // FIRST BUTTON IS REQUIRED
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            color: Colors.white,
            child: Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          icon: Icon(Icons.videogame_asset,color: Colors.red,), // IF YOU WANT TO ADD ICON
          yourWidget: Column(
            children: [
              Container(
                child: (dice2 > dice1) ? Text("Winner : Dice 2", style: TextStyle(fontSize: 23.0)) : Text("Winner : Dice 1", style: TextStyle(fontSize: 23.0),),
              ),
              SizedBox(height: 10.0,),
              Container(
                child: Text("Dice 1 = "+ dice1.toString(),style: TextStyle(fontSize: 22.0),),
              ),

              Container(
                child: Text("Dice 2 = "+ dice2.toString(),style: TextStyle(fontSize: 22.0),),
              ),
            ],
          ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 24.0,),
              Container(
                alignment: Alignment.centerRight,
                  child: IconButton(
                    iconSize: 40.0,
                      icon: new Icon(Icons.home,color: Colors.white,),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MyHomePage()));
                    },
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: HomeImage1,
                      width: 120.0,
                      height: 120.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Image(
                      image: HomeImage2,
                      width: 120.0,
                      height: 120.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                  child: Text('Roll Me', textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  ),
                  color: Colors.amber,
                  onPressed: diceChanger,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
                  child: Text('Winner?', textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  ),
                  color: Colors.amber,
                  onPressed: Winner,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
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