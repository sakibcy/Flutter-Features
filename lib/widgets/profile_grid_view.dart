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
        Tooltip(
          message: 'Doraemon',
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/doraemon-fudgy-pie.gif'),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Tooltip(
              message: 'Doraemon funyy',
              child: Image.asset('assets/images/doraemon-cat.gif')),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/doraemon-funny.gif'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/doremon-smile.gif'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/infinite-doraemon.gif'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/doraemon-broken.gif'),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/images/ドラえもん-ジャイアン.gif',
            height: 60,
            width: 60,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset('assets/images/doraemon-happy.gif'),
        ),
      ],
    );
  }
}
