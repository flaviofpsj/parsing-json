import 'package:flutter/material.dart';
import './../../models/list_map_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class ListMapScreen extends StatefulWidget {

  final String title;

  ListMapScreen({Key key, this.title}) : super(key: key);

  static String route = 'listMap';

  @override
  _ListMapScreenState createState() => _ListMapScreenState();
}

class _ListMapScreenState extends State<ListMapScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(
        child: new FutureBuilder<ListMapModel>(
          future: Services.fetchListMap(),
          builder: (BuildContext context, AsyncSnapshot<ListMapModel> snapshot) {
            if(snapshot.hasData) {
              List<Photo> photosList = snapshot.data.photos;
              return new GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                padding: new EdgeInsets.all(20),
                children: photosList.map((i) =>
                  stackBuilder(i.url, i.title),
                ).toList(),
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
