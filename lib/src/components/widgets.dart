import 'package:flutter/material.dart';
import './../styles/styles.dart';

Widget buttonBuilder(Function callback, IconData icon, String text) {
  return new Container(
    padding: new EdgeInsets.only(bottom: 40),
    child: new RaisedButton(
      highlightElevation: 0,
      elevation: 0,
      onPressed: callback,
      child: new Row(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.only(right: 10),
            child: new Icon(icon, color: Colors.brown[700],),
          ),
          new Text(text, style: new TextStyle(fontSize: 18, color: Colors.brown[700],),),
        ],
      ),
    ),
  );
}

Widget circularProgressIndicatorBuilder() {
  return new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(CommonColors.marfin),
      ),
      new Container(
        padding: new EdgeInsets.only(top: 20),
        child: new Text('Loading...'),
      ),
    ],
  );
}

Widget gridViewBuilder(String url, title) {
  return new GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    padding: new EdgeInsets.all(20),
    children: <Widget>[
      stackBuilder(url, title),
    ],
  );
}

Widget stackBuilder(String url, title) {
  return new Stack(
    children: <Widget>[
      new Container(
        margin: new EdgeInsets.all(10),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new NetworkImage(url),
          )
        ),
      ),
      new Positioned(
        right: 10,
        bottom: 10,
        left: 10,
        child: new Container(
          alignment: Alignment.center,
          height: 25,
          width: double.maxFinite,
          color: Color.fromRGBO(0, 0, 0, .25),
          child: new Text(
            title.length >= 20
            ? title.substring(0, 20) + '...'
            : title,
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}

Widget rowBuilder(IconData icon, String text) {
  return new Container(
    margin: new EdgeInsets.symmetric(vertical: 5),
    child: new Row(
      children: <Widget>[
        new Container(
          margin: new EdgeInsets.only(right: 10),
          child: new Icon(icon, color: CommonColors.marfin,),
        ),
        new Text(text, style: new TextStyle(color: Colors.black54, fontSize: 17)),
      ],
    ),
  );
}

Widget rowListBuilder(String name, email, phone, street, number, lat, lng) {
  return new Column(
    children: <Widget>[
      rowBuilder(Icons.person, name),
      rowBuilder(Icons.email, email),
      rowBuilder(Icons.phone, phone),
      rowBuilder(Icons.home, street + ', ' + number),
      rowBuilder(Icons.place, lat + ', ' + lng),
      new Divider(
        height: 45,
      ),
    ],
  );
}

Widget profileBuilder(String avatar, firstName, lastName) {
  return new Column(
    children: <Widget>[
      new Container(
        width: 128,
        height: 128,
        margin: new EdgeInsets.only(bottom: 10),
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          border: new Border.all(color: CommonColors.beige, width: 3),
          boxShadow: [
            new BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            ),
          ],
          image: new DecorationImage(
            image: new NetworkImage(avatar),
          )
        ),
      ),
      new Text(firstName + ' ' + lastName, style: new TextStyle(fontSize: 22),),
      new Divider(
        height: 45,
      ),
    ],
  );
}
