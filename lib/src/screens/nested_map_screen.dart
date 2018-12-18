import 'package:flutter/material.dart';
import './../models/nested_map_model.dart';
import './../services/services.dart';
import './../components/widgets.dart';

class NestedMapScreen extends StatefulWidget {

  final String title;

  NestedMapScreen({Key key, this.title}) : super(key: key);

  static String route = 'nestedMap';

  @override
  _NestedMapScreenState createState() => _NestedMapScreenState();
}

class _NestedMapScreenState extends State<NestedMapScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        centerTitle: true,
      ),
      body: new Center(
        child: new FutureBuilder<NestedMapModel>(
          future: Services.fetchNestedMap(),
          builder: (BuildContext context, AsyncSnapshot<NestedMapModel> snapshot) {
            if(snapshot.hasData) {
              List<Users> usersList = snapshot.data.users;
              return new ListView(
                padding: new EdgeInsets.only(top: 25, left: 30, right: 30),
                children: usersList.map((i) =>
                  rowListBuilder(
                    i.name, i.email, i.phone, i.address.street,
                    i.address.suite, i.address.geo.lat, i.address.geo.lng
                  ),
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
