import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: RichText(
        text: TextSpan(
          text: 'Flutter World',
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
            TextSpan(
              text: ' for',
            ),
            TextSpan(
              text: ' Mobile',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ));
  }
}
