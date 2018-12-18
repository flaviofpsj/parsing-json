import 'package:flutter/material.dart';
import './../components/widgets.dart';

class ParsingJson extends StatefulWidget {
  @override
  _ParsingJsonState createState() => _ParsingJsonState();
}

class _ParsingJsonState extends State<ParsingJson> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Parsing Json'),
        centerTitle: true,
      ),
      body: new Container(
        padding: new EdgeInsets.only(top: 30, left: 70, right: 70),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buttonBuilder(() { Navigator.of(context).pushNamed('simpleMap'); }, Icons.filter_1, 'Simple Map'),
              buttonBuilder(() { Navigator.of(context).pushNamed('listMap'); }, Icons.filter_2, 'List Map'),
              buttonBuilder(() { Navigator.of(context).pushNamed('simpleMapWithList'); }, Icons.filter_3, 'Simple Map With List'),
              buttonBuilder(() { Navigator.of(context).pushNamed('nestedMap'); }, Icons.filter_4, 'Nested Map'),
              buttonBuilder(() { Navigator.of(context).pushNamed('nestedMapWithList'); }, Icons.filter_5, 'Nested Map With List'),
            ],
          ),
        ),
      ),
    );
  }
}
