import 'package:flutter/material.dart';

class AdvancedParse extends StatefulWidget {

  final String title;

  AdvancedParse({Key key, this.title}) : super(key: key);

  static String route = 'advancedParse';

  @override
  _AdvancedParseState createState() => _AdvancedParseState();
}

class _AdvancedParseState extends State<AdvancedParse> {
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
