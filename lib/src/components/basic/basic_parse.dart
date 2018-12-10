import 'package:flutter/material.dart';
import './../../models/tabbar_model.dart';
import './basic_parse_simple.dart';
import './basic_parse_list.dart';

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
    return new DefaultTabController(
      length: choices.length,
      child: new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(widget.title),
          bottom: new TabBar(
            tabs: choices.map((content) {
              return new Tab(
                text: content.title,
                icon: new Icon(content.icon),
              );
            }).toList(),
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new BasicParseSimple(),
            new BasicParseList(),
          ],
        ),
      ),
    );
  }
}
