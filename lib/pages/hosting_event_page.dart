import 'package:flutter/material.dart';

class HostingEventPage extends StatefulWidget {
  @override
  _HostingEventPageState createState() => _HostingEventPageState();
}

class _HostingEventPageState extends State<HostingEventPage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    // Needed for keeping page state (keep alive)
    super.build(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        title: Text('Hosting'),
      ),
      body: ListView.builder(
          itemCount: 500,
          itemBuilder: (context, index) {
            return Card(
              color: index % 2 == 0 ? Colors.teal : null,
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
  // TODO: implement wantKeepAlive, controls whether page state will be saved and
  //       not be rebuilt each time it is selected from the nav bar
  bool get wantKeepAlive => true;
}
