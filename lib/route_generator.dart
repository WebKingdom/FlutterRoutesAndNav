import 'package:flutter/material.dart';
import 'package:routes_and_navbar/main.dart';
import 'package:routes_and_navbar/pages/first_page.dart';
import 'package:routes_and_navbar/pages/home_page.dart';
import 'package:routes_and_navbar/pages/second_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      // Cases are different pages to route/navigate to
      case '/homePage':
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      case '/first':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        // Validation of correct input parameter data type
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
            ),
          );
        }
        // If args is not correct type, return an error page
        // Can also throw an exception (in development)
        return _errorRoute();
      default:
        // If there is no such named route in switch statement, display error
        return _errorRoute();
    }
  }

  // TODO throw exception instead and handle it
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR: Wrong page route/parameter(s)'),
        ),
      );
    });
  }
}
