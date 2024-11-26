import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'India Agro Exports Pvt. Ltd.',
          style: TextStyle(fontSize: 26),
        ),
        SizedBox(height: 20,),
        Text('Sy. No. 47/1 A1 | 48/1 | Yedumudu Village | Harohalli Hobli | Kanakapura Taluk | Bengaluru - 562 112 Please Contact: Pratham Shah - Director | prathamshahargherkins@gmail.com Megha Dipankar - Customer Relation Executive | +91 93609 46927 | megha@iaearg.com',
          style: TextStyle(
            fontSize: 16
          ),
        ),
        SizedBox(height: 80,),
        Text(
          'www.indiaagro.in',
          style: TextStyle(fontSize: 14),
        ),
      ],
    ));
  }
}
