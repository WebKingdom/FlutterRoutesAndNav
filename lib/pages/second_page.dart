import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  // Can yo any type of data, can also be class
  final String data;

  SecondPage({
    Key key,
    @required this.data,
  }) : super(key: key);

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
              '2nd Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              // Display data passed into 2nd page from 1st page
              data,
              style: TextStyle(fontSize: 20),
            ),
            // Extra button for going to undefined page with undefined args, yields error page
            RaisedButton(
              child: Text('Go to undefined Page'),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/nonExisting',
                  arguments: 'Whatever',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
