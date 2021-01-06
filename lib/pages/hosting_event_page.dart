import 'package:flutter/material.dart';
import 'package:routes_and_navbar/appWidgets/custom_widgets.dart';
import 'package:routes_and_navbar/constants/app_constants.dart';

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
      // TODO configure appbar on-pressed actions
      appBar: CustomWidgets.buildAppBar(context, 'Hosting', null, null),
      body: CustomWidgets.buildHostingEventListView(context, Constants.strings.eventTitle, Constants.strings.eventDescription1, Constants.strings.eventDescription2),
    );
  }

  @override
  // TODO: implement wantKeepAlive, controls whether page state will be saved and
  //       not be rebuilt each time it is selected from the nav bar
  bool get wantKeepAlive => true;
}
