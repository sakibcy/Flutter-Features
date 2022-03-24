import 'package:flutter/material.dart';

class TabLive extends StatefulWidget {
  const TabLive({Key? key}) : super(key: key);

  @override
  State<TabLive> createState() => _TabLiveState();
}

class _TabLiveState extends State<TabLive> {
  DateTime? _dateTime;
  double _currentSliderValue = 10;
  double onChangeValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(strokeWidth: 3.0),
          const SizedBox(height: 12),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: LinearProgressIndicator(color: Colors.green, minHeight: 10),
          ),
          const SizedBox(height: 12),
          // TODO: CircularProgressIndicator animation
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.volume_down),
              Slider(
                value: _currentSliderValue,
                max: 100,
                activeColor: Colors.red,
                inactiveColor: Colors.green,
                autofocus: true,
                focusNode: FocusNode(canRequestFocus: true),
                label: _currentSliderValue.round().toString(),
                onChangeStart: (double newValue) {
                  onChangeValue = newValue;
                },
                onChangeEnd: (double newValue) {
                  setState(() {
                    onChangeValue = newValue;
                  });
                },
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),
              const Icon(Icons.volume_up)
            ],
          ),
          Text('${_currentSliderValue.round()}'),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    child: const Text('Pick a Date'),
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2021),
                        lastDate: DateTime(2025),
                      ).then((date) {
                        setState(() {
                          _dateTime = date!;
                        });
                      });
                    },
                  ),
                  Text(_dateTime == null
                      ? 'No date is selected'
                      : (DateTime.parse(_dateTime.toString())).toString()),
                ],
              ),
              const SizedBox(width: 12),
              Column(children: [
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Showing snackBar'),
                          duration: const Duration(seconds: 3),
                          width: 280.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          behavior: SnackBarBehavior.floating,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          action: SnackBarAction(
                            label: 'Action',
                            onPressed: () {},
                          ),
                        ),
                      );
                    },
                    child: const Text('Snack Bar'))
              ]),
            ],
          ),

          const SizedBox(height: 20),
          // TODO: SimpleDialog widget
          // TODO: ExpansionPanel widget
          // TODO: TextField widget
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: const Text(
                      'AlertDialog description: welcome to alert box..you are welcomed here'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'Ok'),
                        child: const Text('Ok'))
                  ],
                )),
        label: const Text('Alert Dialog'),
        icon: const Icon(Icons.thumb_up_alt_sharp),
      ),
    );
  }
}
