import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'Simple.dart';
import 'Hard.dart';
import 'Contactus.dart';


class Resultpage extends StatefulWidget {

  List<int> selected = new List(5);
  List<int> random = new List(5);

  Resultpage({Key key ,@required this.selected, @required this.random}) : super(key : key);


  @override
  _MyResultpageState createState() => _MyResultpageState(selected,random);
}

class _MyResultpageState extends State<Resultpage> {
  List<int> selected = new List(5);
  List<int> random = new List(5);
  int t = 0;
  int f = 0;

  _MyResultpageState(this.selected,this.random);

  @override
  void initState() {
    for (int j = 0; j < 5; j++) {
      if (selected[j] == random[j]) {
        t++;
      } else {
        f++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Result",
                style: TextStyle(fontSize: 50.0),
              ),
              Container(
                child: Column(
                  children: [
                    Text("Right : " + t.toString(),style: TextStyle(fontSize: 40.0),),
                    Text("Wrrong : " + f.toString(),style: TextStyle(fontSize: 40.0),),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
