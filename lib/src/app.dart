import 'package:flutter/material.dart';
import './screens/parsing_json.dart';
import './screens/simple_map_screen.dart';
import './screens/list_map_screen.dart';
import './screens/simple_map_with_list_screen.dart';
import './screens/nested_map_screen.dart';
import './screens/nested_map_with_list_screen.dart';
import './styles/styles.dart';

final routes = <String, WidgetBuilder> {
  SimpleMapScreen.route: (context) => SimpleMapScreen(title: 'Simple Map'),
  ListMapScreen.route: (context) => ListMapScreen(title: 'List Map'),
  SimpleMapWithListScreen.route: (context) => SimpleMapWithListScreen(title: 'Simple Map With List'),
  NestedMapScreen.route: (context) => NestedMapScreen(title: 'Nested Map'),
  NestedMapWithListScreen.route: (context) => NestedMapWithListScreen(title: 'Nested Map With List'),
};

const MaterialColor primarySwatch = const MaterialColor(
  0xFF90323D,
  const <int, Color> {
    50: const Color(0xFF90323D),
    100: const Color(0xFF90323D),
    200: const Color(0xFF90323D),
    300: const Color(0xFF90323D),
    400: const Color(0xFF90323D),
    500: const Color(0xFF90323D),
    600: const Color(0xFF90323D),
    700: const Color(0xFF90323D),
    800: const Color(0xFF90323D),
    900: const Color(0xFF90323D),
  }
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parsing Json',
      theme: new ThemeData(
        primaryColor: CommonColors.marfin,
        primarySwatch: primarySwatch,
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
