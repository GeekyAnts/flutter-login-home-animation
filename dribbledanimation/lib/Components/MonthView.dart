import 'package:flutter/material.dart';

class MonthView extends StatelessWidget {
  final VoidCallback selectbackward;
  final VoidCallback selectforward;
  final String month;
  MonthView({this.selectbackward, this.selectforward, this.month});
  @override
  Widget build(BuildContext context) {
    return (new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new IconButton(
          icon: new Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: selectbackward,
        ),
        new Text(
          month.toUpperCase(),
          textAlign: TextAlign.center,
          style: new TextStyle(
              fontSize: 18.0,
              letterSpacing: 1.2,
              fontWeight: FontWeight.w300,
              color: Colors.white),
        ),
        new IconButton(
          icon: new Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
          onPressed: selectforward,
        ),
      ],
    ));
  }
}
