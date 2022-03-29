import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/tab_home/tab_home_1st_page.dart';
import 'package:flutter_practice/screens/tab_home/tab_home_3rd_page.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: PageView(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.horizontal,
        children: const [
          TabHome1stPage(),
          Center(
            child: Text('Second Page'),
          ),
          TabHome3dPage()
        ],
      ),
    );
  }
}
