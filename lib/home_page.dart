import 'package:flutter/material.dart';
import 'package:flutter_sosyalmedya_appbar/body.dart';
import 'package:flutter_sosyalmedya_appbar/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController  _controller;
  Gradient selectedGradient = GradientList[0];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(() {
      setState(() {
        selectedGradient = GradientList[_controller.index];
      });
    });
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: selectedGradient
            ),
          ),
          title: Text(
            "BTK",
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 20,
                  color: Colors.white,
                ),
          ),
          centerTitle: true,
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: [buildActions()],
          bottom: buildTabBar(),
        ),
        body: Body(controller: _controller),
      ),
    );
  }

  Row buildActions() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 18,
                width: 18,
                padding: EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.lightGreen,
                  ),
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                "Canlı Yayın",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          );
  }
  TabBar buildTabBar() {
    return new TabBar(
          controller:  _controller,
          isScrollable: true,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(
              text: "Instagram",
            ),
            Tab(
              text: "Twitter",
            ),
            Tab(
              text: "Facebook",
            ),
            Tab(
              text: "Youtube",
            ),
            Tab(
              text: "Linkedin",
            ),
          ],
        );
  }
}
