import 'package:flutter/material.dart';
import './../../models/nested_map_with_list_model.dart';
import './../../services/services.dart';
import './../../widgets/widgets.dart';

class NestedMapWithListScreen extends StatefulWidget {

  final String title;

  NestedMapWithListScreen({Key key, this.title}) : super(key: key);

  static String route = 'nestedMapWithList';

  @override
  _NestedMapWithListScreenState createState() => _NestedMapWithListScreenState();
}

class _NestedMapWithListScreenState extends State<NestedMapWithListScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(
        child: new FutureBuilder<NestedMapWithListModel>(
          future: Services.fetchNestedMapWithList(),
          builder: (BuildContext context, AsyncSnapshot<NestedMapWithListModel> snapshot) {
            if(snapshot.hasData) {
              List<Data> dataList = snapshot.data.data;
              return new ListView(
                padding: new EdgeInsets.only(top: 30, left: 30, right: 30),
                children: dataList.map((i) =>
                  profileBuilder(i.avatar, i.firstName, i.lastName),
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
