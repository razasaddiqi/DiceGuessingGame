import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dice_guessing_game_053/main.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,home:SplashScreen()));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => MyHomePage()
        ))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black54,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                SizedBox(height: 40.0,),
                Expanded(
                    flex: 4,
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: AssetImage('images/ii.jpg'),
                    )),
                Expanded(
                    flex: 5,
                    child: Center(
                        child: Text(
                      "UMAIR NAWAZ\n\nSP17-BCS-053",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )))
              ],
            ),
          ),
        ),
      );
  }
}
