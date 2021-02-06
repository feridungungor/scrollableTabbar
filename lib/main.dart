import 'package:flutter/material.dart';
import 'package:flutter_sosyalmedya_appbar/home_page.dart';
import 'package:flutter_sosyalmedya_appbar/model/appbar_theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppbarThemeProvider(),
      child: Consumer<AppbarThemeProvider>(
        builder: (context,theme,child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'AppBarChange',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage(),
        ),
      ),
    );
  }
}
