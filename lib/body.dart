import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required TabController controller,
  }) : _controller = controller, super(key: key);

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _controller,
      children: [
        Container(
          height: 200,
          child: Center(
            child: Text(
              "Instagram",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 200,
          child: Center(
            child: Text(
              "Twitter",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 200,
          child: Center(
            child: Text(
              "Facebook",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 200,
          child: Center(
            child: Text(
              "Youtube",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 200,
          child: Center(
            child: Text(
              "Linkedin",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
