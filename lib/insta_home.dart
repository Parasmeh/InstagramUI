// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui/insta_list.dart';

class InstaHome extends StatelessWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[const Flexible(child: InstaList())],
      ),
    );
  }
}
