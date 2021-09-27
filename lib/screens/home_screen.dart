import 'package:flutter/material.dart';
import 'package:pland_app/constants.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 2,vsync: this);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Hello Ahmed!',style: TextStyle(color: Colors.black),),
      ),
      body: Container(
child: Column(
  children: [
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/3,
    ),
    TabBar(
      unselectedLabelColor: Colors.white,
      controller: tabController,
        labelColor: Colors.black,
        tabs: [
      Tab(
        text: 'Hire a Gardener',
      ),
          Tab(
        text: 'Packages',
      )
    ]),
    Expanded(
      child: TabBarView(
        physics: ScrollPhysics(),
          controller: tabController,
          children: [
        Text('gardener'),
        Text('package'),
      ]),
    )
  ],
),
      ),
    ));
  }
}
