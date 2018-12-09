import 'package:flutter/material.dart';

Widget buttonBuilder(Function callback, IconData icon, String text) {
  return new Container(
    padding: new EdgeInsets.only(bottom: 20),
    child: new RaisedButton(
      highlightElevation: 0,
      elevation: 0,
      onPressed: callback,
      child: new Row(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(right: 10),
            child: new Icon(icon, color: Colors.brown[700],),
          ),
          new Text(text, style: new TextStyle(fontSize: 18, color: Colors.brown[700],),),
        ],
      ),
    ),
  );
}
