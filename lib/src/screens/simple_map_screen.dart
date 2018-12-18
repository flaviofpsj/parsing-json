import 'package:flutter/material.dart';
import './../models/simple_map_model.dart';
import './../services/services.dart';
import './../components/widgets.dart';

class SimpleMapScreen extends StatefulWidget {

  final String title;

  SimpleMapScreen({Key key, this.title}) : super(key: key);

  static String route = 'simpleMap';

  @override
  _SimpleMapScreenState createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(
        child: new FutureBuilder<SimpleMapModel>(
          future: Services.fetchSimpleMap(),
          builder: (BuildContext context, AsyncSnapshot<SimpleMapModel> snapshot) {
            if(snapshot.hasData) {
              return gridViewBuilder(snapshot.data.url, snapshot.data.title);
            } else {
              return circularProgressIndicatorBuilder();
            }
          },
        ),
      ),
    );
  }
}
