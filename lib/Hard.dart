import 'package:dice_guessing_game_053/Resultpage.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';

class Hard extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Hard> {
  AssetImage HomeImage1 = AssetImage("images/dice.jpg");


  List<int> _selected = new List(5);
  static int i = 0;
  int s =0 ;
  List<int> random = new List(5);

  @override
  void initState() {
    super.initState();
    setState(() {
      i = 0;
    });
  }

  void diceChanger() async {

    if (i == 5) {
      int t = 0;
      int f = 0;
      for (int j = 0; j < 5; j++) {
        if (_selected[j] == random[j]) {
          t++;
        } else {
          f++;
        }
      }
      await animated_dialog_box.showRotatedAlert(
          title: Center(
              child: Text(
            "Result",
            style: TextStyle(fontSize: 25.0),
          )),
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
          yourWidget: Container(
            child: Column(
              children: [
                Text("Right : " + t.toString()),
                Text("Wrrong : " + f.toString()),
              ],
            ),
          ));
    }
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
                    iconSize: 30.0,
                    icon: new Icon(Icons.home,color: Colors.white,),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => MyHomePage()));
                    },
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text("Guess Dice: " + (i+1).toString(), style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),)),
                    SizedBox(width: 10.0,),
                    Image(
                      image: HomeImage1,
                      width: 100.0,
                      height: 100.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 1;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 2;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '3',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 3;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '4',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 4;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 5;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      child: Text(
                        '6',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.amber,
                      onPressed: (){
                        setState(() {
                          random[i] = (1 + Random().nextInt(6));
                          _selected[i] = 6;
                          i++;
                        });
                        if(i==5){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                              builder: (context) => Resultpage(selected: _selected, random: random)
                          ));
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
