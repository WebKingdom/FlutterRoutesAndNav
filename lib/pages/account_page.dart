import 'package:flutter/material.dart';
import 'package:routes_and_navbar/appWidgets/custom_widgets.dart';
import 'package:routes_and_navbar/constants/app_constants.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: CustomWidgets.buildAppBar(context, Constants.strings.appBarProfile, null, null),
      body: CustomWidgets.buildProfileEventListView(context, Constants.strings.eventTitle, Constants.strings.eventDescription1, Constants.strings.eventDescription2),
    );
  }
}
