import 'package:flutter/material.dart';
import 'package:prakriti/core/style/color.dart';
import 'package:prakriti/product_page.dart';
import 'info_page.dart';
import 'profile_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> listWidget;
  late Widget child;

  @override
  void initState() {
    super.initState();
    listWidget = [];
  }

  List<Icon> listIcons = [
    Icon(Icons.ac_unit),
    Icon(Icons.access_alarm),
    Icon(Icons.access_time)
  ];

  _clickHandler(int i) {
    switch (i) {
      case 0:
        child = ProfilePage();
        break;
      case 1:
        child = ProductPage();
        break;
      case 2:
        child = InfoPage();
    }
  }

  List<Widget> _buildButtons() {
    for (int i = 0; i < 3; i++) {
      listWidget.add(
        InkWell(
            onTap: () {
              _clickHandler(i);
              setState(() {});
            },
            child: listIcons[i]),
      );
    }
    return listWidget;
  }

  @override
  Widget build(BuildContext context) {
    listWidget = [];
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height - 40,
                width: MediaQuery.of(context).size.width,
                color: PrakritiColors.backgroundYellow,
                child: child,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: PrakritiColors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _buildButtons(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
