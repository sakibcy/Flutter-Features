import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/checkbox.dart';

class TabCart extends StatefulWidget {
  const TabCart({Key? key}) : super(key: key);

  @override
  State<TabCart> createState() => _TabCartState();
}

class _TabCartState extends State<TabCart> {
  var _character = 1;
  bool _switchChange = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const ElevatedButton(
                    onPressed: null,
                    child: Text('Disabled'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Outlined Button'),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Radio<int>(
                          value: 1,
                          groupValue: _character,
                          onChanged: (value) {
                            setState(() {
                              _character = value!;
                            });
                          }),
                      const Text('Radio 1'),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<int>(
                          value: 2,
                          groupValue: _character,
                          onChanged: (value) {
                            setState(() {
                              _character = value!;
                            });
                          }),
                      const Text('Radio 2'),
                    ],
                  ),
                  Row(
                    children: [
                      Switch(
                          value: _switchChange,
                          onChanged: (value) {
                            setState(() {
                              _switchChange = value;
                            });
                          }),
                      const Text('Switch'),
                    ],
                  ),
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: const [
                      Chip(
                          backgroundColor: Colors.purple,
                          avatar: CircleAvatar(
                            child: Icon(Icons.done, color: Colors.white),
                            backgroundColor: Colors.purple,
                          ),
                          label: Text(
                            'Chip',
                            style: TextStyle(color: Colors.white),
                          )),
                      Chip(
                        avatar: Icon(Icons.done),
                        label: Text('Chip 2'),
                      ),
                    ],
                  )
                ]),
            Column(
              children: [
                PopupMenuButton(
                    itemBuilder: (context) => <PopupMenuEntry>[
                          const PopupMenuItem(child: Text('PopupMenuItem 1')),
                          const PopupMenuItem(child: Text('PopupMenuItem 2')),
                        ],
                    child: Row(
                      children: const [
                        Icon(Icons.adobe),
                        Text('PopupMenuButton',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                backgroundColor: Colors.blue)),
                      ],
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [CheckBox(), Text('CheckBox 1')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [CheckBox(), Text('CheckBox 3')],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
