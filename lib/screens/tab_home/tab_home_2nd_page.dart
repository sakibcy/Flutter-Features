import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabHome2ndPage extends StatelessWidget {
  const TabHome2ndPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 100,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(30)),
              gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                    offset: Offset(0.0, 10.0))
              ]),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          width: 200,
          child: const Center(
              child: Text(
            'Container',
            style: TextStyle(color: Colors.white),
          )),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [Colors.green, Colors.red])),
        ),
        const SizedBox(height: 20),
        const RichTextClass(),
        const SizedBox(height: 20),
        Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10.0,
                  offset: Offset(10.0, 10.0),
                )
              ]),
        )
      ],
    );
  }
}

class RichTextClass extends StatelessWidget {
  const RichTextClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: "Fultter features",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.deepPurple,
              decoration: TextDecoration.underline,
              decorationColor: Colors.deepPurpleAccent,
              decorationStyle: TextDecorationStyle.dotted,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.normal,
            ),
            children: <TextSpan>[
          TextSpan(text: " for"),
          TextSpan(
            text: ' Mobile',
            style: TextStyle(
                color: Colors.deepOrange,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          )
        ]));
  }
}
