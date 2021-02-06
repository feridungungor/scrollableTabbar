import 'package:flutter/material.dart';

Color cTwitter = Color(0XFF1da1f2);
Color cFaceBook = Color(0XFF4267B2);
Color cInstagram = Color(0XFF405de6);
Color cYoutube = Color(0XFFc4302b);
Color cLinkedin = Color(0XFF0e76a8);

List<Color> AppDefaultColor = [
  cInstagram,
  cTwitter,
  cFaceBook,
  cYoutube,
  cLinkedin
];

Gradient gInstagrem = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Colors.red, Colors.blue]);

Gradient gTwitter = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [cTwitter, cTwitter]);

Gradient gFacebook = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [cFaceBook, cFaceBook]);

Gradient gYoutube = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [cYoutube, cYoutube]);

Gradient gLinkedin = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [cLinkedin, cLinkedin]);

List<Gradient> GradientList = [
  gInstagrem,
  gTwitter,
  gFacebook,
  gYoutube,
  gLinkedin
];

