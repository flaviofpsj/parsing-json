import 'package:flutter/material.dart';
import './../../models/simple_map_with_list_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class SimpleMapWithListScreen extends StatefulWidget {

  final String title;

  SimpleMapWithListScreen({Key key, this.title}) : super(key: key);

  static String route = 'simpleMapWithList';

  @override
  _SimpleMapWithListScreenState createState() => _SimpleMapWithListScreenState();
}

class _SimpleMapWithListScreenState extends State<SimpleMapWithListScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(
        child: new FutureBuilder<SimpleMapWithListModel>(
          future: Services.fetchSimpleMapWithList(),
          builder: (BuildContext context, AsyncSnapshot<SimpleMapWithListModel> snapshot) {
            if(snapshot.hasData) {
              List<String> phonesList = snapshot.data.phones;
              return new ListView(
                padding: new EdgeInsets.only(top: 25, left: 30, right: 30),
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      rowBuilder(Icons.person, snapshot.data.name),
                      rowBuilder(Icons.email, snapshot.data.email),
                      new Column(
                        children: phonesList.map((i) =>
                          rowBuilder(Icons.phone, i),
                        ).toList(),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return circularProgressIndicatorBuilder();
            }
          },
        ),
      ),
    );
  }
}
