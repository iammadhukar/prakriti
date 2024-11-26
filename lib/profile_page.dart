import 'package:flutter/material.dart';
import 'package:prakriti/core/style/color.dart';

class ProfilePage extends StatelessWidget {
  var _height;
  var _width;
  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child:Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          color: PrakritiColors.backgroundYellow,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                'COMPANY PROFILE',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 1,
                width: _width,
                color: PrakritiColors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.navigate_next),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Founded in 1973. SEEPED IN HERITAGE - \nA third generation Agri based company',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.navigate_next),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'World class Agri based manufacturing \nbase in Bangalore',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.navigate_next),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Global presence - offices in Bangalore, \nChennai and New York',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.navigate_next),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Enabling the growth of the entire value \nchain - Farmers, Suppliers and Employees \nwhile delivering world class products and \nvalue to our stakeholders.',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.navigate_next),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Relationship with more than 2000 farmers \nacross multiple states. Key states of \noperation - Karnataka, Tamil Nadu and \nGujarat',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ],
          ),
        ),
      );
  }
}
