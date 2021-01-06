import 'package:flutter/material.dart';
import 'package:routes_and_navbar/appWidgets/custom_widgets.dart';
import 'package:routes_and_navbar/constants/app_constants.dart';

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
      appBar: CustomWidgets.buildAppBar(context, 'Attending', null, null),
      body: CustomWidgets.buildAttendingEventListView(context, Constants.strings.eventTitle, Constants.strings.eventDescription1, Constants.strings.eventDescription2),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
