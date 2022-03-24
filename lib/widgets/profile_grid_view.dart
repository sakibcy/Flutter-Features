import 'package:flutter/material.dart';

class ProfileGridView extends StatelessWidget {
  const ProfileGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Doraemon'),
          color: Colors.teal,
        ),
      ],
    );
  }
}
