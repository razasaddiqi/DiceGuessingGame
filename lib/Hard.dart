import 'package:flutter/material.dart';
import 'dart:math';
import 'package:animated_dialog_box/animated_dialog_box.dart';
import 'package:flutter/widgets.dart';

class Hard extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Hard> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage HomeImage1;

  List<int> _selected = new List(5);
  static int i = 0;
  int s =0 ;
  List<int> random = new List(5);

  @override
  void initState() {
    super.initState();
    setState(() {
      i = 0;
      HomeImage1 = one;
    });
  }

  void diceChanger() async {

    if (i == 6) {
      int t = 0;
      int f = 0;
      for (int j = 0; j < 6; j++) {
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
          // IF YOU WANT TO ADD
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
              Container(
                margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: Text("Guess No: " + (i+1).toString(), style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),)),
                    SizedBox(width: 10.0,),
                    Image(
                      image: HomeImage1,
                      width: 120.0,
                      height: 120.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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

                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
                          if(i==6){
                            diceChanger();
                          }
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 20.0),
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
