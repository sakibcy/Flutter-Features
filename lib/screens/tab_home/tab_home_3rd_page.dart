import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom_navigation.dart';

class TabHome3dPage extends StatelessWidget {
  const TabHome3dPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(steps: const [
          Step(title: Text('title'), content: Center(child: Text('content'))),
          Step(title: Text('Step 2 title'), content: Text('Step 3 content'))
        ]),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
