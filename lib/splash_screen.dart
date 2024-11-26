import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prakriti/core/style/icons.dart';
import 'package:prakriti/home_screen.dart';
import 'core/style/color.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var _height;
  var _width;

  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(
        _duration,
        ()=>Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 85),
        height: _height,
        width: _width,
        color: PrakritiColors.backgroundYellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage(PrakritiIcons.indiaAgroIcon),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Text(
                    'prakriti',
                    style: TextStyle(
                      fontSize: 56,
                      fontStyle: FontStyle.normal,
                      fontFamily: "Baskervville",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Foods',
                        style: TextStyle(fontSize: 16),
                        // textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'spreads',
              style: TextStyle(
                fontSize: 56,
                fontFamily: "Italianno-Cursive",
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text('www.indiaagro.in'),
          ],
        ),
      ),
    );
  }
}
