import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/tab_cart.dart';
import 'package:flutter_practice/screens/tab_home/tab_home.dart';
import 'package:flutter_practice/screens/tab_live.dart';
import 'package:flutter_practice/screens/tab_profile.dart';
import 'package:flutter_practice/widgets/bottom_navigation.dart';
import 'package:flutter_practice/widgets/mydrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Flutter Features',
        theme: ThemeData(
            primarySwatch: Colors.teal,
            accentColor: Colors.black,
            canvasColor: Colors.white,
            platform: TargetPlatform.android),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: buildAppBar(),
            body: buildTabBarView(),
            drawer: const MyDrawer(),
          ),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 5,
      title: const Text("Flutter Features"),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      bottom: const TabBar(tabs: [
        Tab(
          icon: Icon(Icons.home_filled),
        ),
        Tab(
          icon: Icon(Icons.account_box),
        ),
        Tab(
          icon: Icon(Icons.video_call),
        ),
        Tab(
          icon: Icon(CupertinoIcons.shopping_cart),
        )
      ]),
    );
  }

  TabBarView buildTabBarView() {
    return const TabBarView(children: <Widget>[
      Center(
        child: TabHome(),
      ),
      Center(
        child: TabProfile(),
      ),
      Center(
        child: TabLive(),
      ),
      Center(
        child: TabCart(),
      )
    ]);
  }
}
