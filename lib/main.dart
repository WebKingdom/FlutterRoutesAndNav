import 'package:flutter/material.dart';
import 'package:routes_and_navbar/pages/home_page.dart';
import 'package:routes_and_navbar/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Routes & Navbar',
      theme: ThemeData.dark(),
      // TODO make routes
      home: HomePage(),
      // initialRoute: '/homePage',
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
