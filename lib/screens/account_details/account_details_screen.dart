import 'package:flutter/material.dart';

import 'components/body.dart';

class AccountDetailsScreen extends StatelessWidget {
  static String routeName = "/account_details";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Back"),
      ),
      body: Body(),
    );
  }
}
