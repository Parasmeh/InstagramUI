import 'package:flutter/material.dart';
import 'package:instagram_ui/insta_stories.dart';
import 'insta_post.dart';

class InstaList extends StatefulWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  _InstaListState createState() => _InstaListState();
}

class _InstaListState extends State<InstaList> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              child: InstaStories(),
              height: deviceSize.height * 0.20,
            )
          : InstaPosts(),
    );
  }
}
