import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaPosts extends StatefulWidget {
  const InstaPosts({Key? key}) : super(key: key);

  @override
  State<InstaPosts> createState() => _InstaPostsState();
}

class _InstaPostsState extends State<InstaPosts> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/paras1.jpg')),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Text(
                    "paras._.mehta",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: null,
              )
            ],
          ),
        ),
        Flexible(
          fit: FlexFit.loose,
          child: Image.asset(
            'assets/images/paras.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                        isPressed ? Icons.favorite : FontAwesomeIcons.heart),
                    color: isPressed ? Colors.red : Colors.black,
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  const Icon(
                    FontAwesomeIcons.comment,
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  const Icon(FontAwesomeIcons.paperPlane),
                ],
              ),
              const Icon(FontAwesomeIcons.bookmark)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Liked by paras._.mehta, sanyam_sh and 121 others",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 40.0,
                width: 40.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/paras1.jpg'),
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Add a comment...",
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text("10 hours ago", style: TextStyle(color: Colors.grey)),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
