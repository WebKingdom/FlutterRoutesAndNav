import 'package:flutter/material.dart';

class CustomWidgets {

  // Global appbar for Hosting, attending, and account/profile page
  static Widget buildAppBar(BuildContext context, String appBarTitle, Function menuPressedAction, Function iconPressedAction) {
    return AppBar(
      title: Text(appBarTitle),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () => menuPressedAction,
      ),
      actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () => iconPressedAction)],
    );
  }

  // Hosting events list view builder widget
  static Widget buildHostingEventListView(BuildContext context, String eventTitle, String eventDescrib1, String eventDescrib2) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.teal : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    eventTitle + ' ${index + 1}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(eventDescrib1),
                  Text(eventDescrib2),
                ],
              ),
            ),
          );
        });
  }

  // Attending events list view builder widget
  static Widget buildAttendingEventListView(BuildContext context, String eventTitle, String eventDescrib1, String eventDescrib2) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.blue : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    eventTitle + ' ${index + 1}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(eventDescrib1),
                  Text(eventDescrib2),
                ],
              ),
            ),
          );
        });
  }

  // TODO temporary to until account page is made
  static Widget buildProfileEventListView(BuildContext context, String eventTitle, String eventDescrib1, String eventDescrib2) {
    return ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.blueGrey : null,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    eventTitle + ' ${index + 1}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(eventDescrib1),
                  Text(eventDescrib2),
                ],
              ),
            ),
          );
        });
  }
}
