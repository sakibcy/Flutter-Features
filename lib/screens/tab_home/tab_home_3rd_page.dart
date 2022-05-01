import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation.dart';

class TabHome3dPage extends StatelessWidget {
  const TabHome3dPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          primary: false,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisCount: 1,
                children: [
                  Center(
                    child: Stepper(steps: const [
                      Step(
                          title: Text('title'),
                          content: Center(child: Text('content'))),
                      Step(
                          title: Text('Step 2 title'),
                          content: Text('Step 3 content'))
                    ]),
                  ),
                  const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      // border: UnderlineInputBorder(),
                      border: OutlineInputBorder(),
                      labelText: "Note",
                      labelStyle: TextStyle(
                        color: Colors.purple,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
