import 'package:flutter/material.dart';

class AttendingEventPage extends StatefulWidget {
  @override
  _AttendingEventPageState createState() => _AttendingEventPageState();
}

class _AttendingEventPageState extends State<AttendingEventPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // Needed for keeping page state (keep alive)
    super.build(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('Attending'),
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index) {
            return Card(
              color: index % 2 == 0 ? Colors.blue : null,
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
