import 'package:flutter/material.dart';

class BasicParse extends StatefulWidget {

  final String title;

  BasicParse({Key key, this.title}) : super(key: key);

  static String route = 'basicParse';

  @override
  _BasicParseState createState() => _BasicParseState();
}

class _BasicParseState extends State<BasicParse> {
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
