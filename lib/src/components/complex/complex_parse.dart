import 'package:flutter/material.dart';

class ComplexParse extends StatefulWidget {

  final String title;

  ComplexParse({Key key, this.title}) : super(key: key);

  static String route = 'complexParse';

  @override
  _ComplexParseState createState() => _ComplexParseState();
}

class _ComplexParseState extends State<ComplexParse> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text(widget.title),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32),
        child: new Center(
          child: new Column(
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
