import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index) {
            return Card(
              color: index % 2 == 0 ? Colors.blueGrey : null,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Title of Event ${index + 1}',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Description of the event & other details...'),
                    Text('More event info & stuff...'),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
