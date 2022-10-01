import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: const <Widget>[
          Icon(Icons.play_arrow),
          Text("Watch All", style: TextStyle(fontWeight: FontWeight.bold))
        ],
      )
    ],
  );

  final stories = Expanded(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            width: 75.0,
            height: 75.0,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              // borderRadius: ,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/paras1.jpg')),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0
              ? const Positioned(
                  right: 10.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.blueAccent,
                    radius: 10.0,
                    child: Icon(
                      Icons.add,
                      size: 14.0,
                      color: Colors.white,
                    ),
                  ))
              : Container()
        ],
      ),
    ),
  );

  InstaStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
