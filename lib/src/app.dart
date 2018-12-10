import 'package:flutter/material.dart';
import './components/parsing_json.dart';
import './components/basic/basic_parse.dart';
import './components/advanced/advanced_parse.dart';
import './components/complex/complex_parse.dart';
import './styles/styles.dart';

final routes = <String, WidgetBuilder> {
  BasicParse.route: (context) => BasicParse(title: 'Basic Parse'),
  AdvancedParse.route: (context) => AdvancedParse(title: 'Advanced Parse'),
  ComplexParse.route: (context) => ComplexParse(title: 'Complex Parse'),
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parsing Json',
      theme: new ThemeData(
        primaryColor: CommonColors.marfin,
        buttonTheme: new ButtonThemeData(
          buttonColor: CommonColors.beige,
          textTheme: ButtonTextTheme.primary,
          height: 45,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(25),
          )
        ),
        tabBarTheme: new TabBarTheme(
          indicator: new UnderlineTabIndicator(
            borderSide: new BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
        ),
      ),
      routes: routes,
      home: new ParsingJson(),
    );
  }
}
