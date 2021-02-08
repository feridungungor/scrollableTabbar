import 'package:flutter/material.dart';
import 'package:flutter_sosyalmedya_appbar/social_media_media_pages/facebook.dart';
import 'package:flutter_sosyalmedya_appbar/social_media_media_pages/instagram.dart';
import 'package:flutter_sosyalmedya_appbar/social_media_media_pages/linkedin.dart';
import 'package:flutter_sosyalmedya_appbar/social_media_media_pages/twitter.dart';
import 'package:flutter_sosyalmedya_appbar/social_media_media_pages/youtube.dart';

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
        Instagram(),
        Twitter(),
        Facebook(),
        Youtube(),
        Linkedin(),
      ],
    );
  }
}
