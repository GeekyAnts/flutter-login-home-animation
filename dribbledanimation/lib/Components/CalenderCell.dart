import 'package:flutter/material.dart';

class CalenderCell extends StatelessWidget {
  final String week;
  final String day;
  final bool today;
  CalenderCell({this.week, this.day, this.today});
  @override
  Widget build(BuildContext context) {
    return (new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        new Text(
          week,
          style: new TextStyle(
              color: const Color.fromRGBO(204, 204, 204, 1.0),
              fontSize: 12.0,
              fontWeight: FontWeight.w400),
        ),
        new Padding(
          padding: new EdgeInsets.only(top: 10.0, bottom: 5.0),
          child: new Container(
              width: 35.0,
              height: 35.0,
              alignment: Alignment.center,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  color: today
                      ? const Color.fromRGBO(204, 204, 204, 0.3)
                      : Colors.transparent),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    day,
                    style: new TextStyle(
                        fontSize: 12.0, fontWeight: FontWeight.w400),
                  ),
                  today
                      ? new Container(
                          padding: new EdgeInsets.only(top: 3.0),
                          width: 3.0,
                          height: 3.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromRGBO(247, 64, 106, 1.0)),
                        )
                      : new Container()
                ],
              )),
        )
      ],
    ));
  }
}
