import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: PageView(
        controller: PageController(initialPage: 0),
        scrollDirection: Axis.horizontal,
        children: [
          Center(
            child: Stepper(steps: const [
              Step(
                  title: Text('title'),
                  content: Center(child: Text('content'))),
              Step(title: Text('Step 2 title'), content: Text('Step 3 content'))
            ]),
          ),
          const Center(
            child: Text('Second Page'),
          ),
          const Center(
            child: Text('Third Page'),
          )
        ],
      ),
    );
  }
}
