import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              '1st Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: Text('Go to 2nd Page'),
              onPressed: () {
                // Pushing a route, using named routes
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: 'Hello from 1st page BOI!',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
