import 'package:flutter/material.dart';
import 'package:flutter_practice/utils/dateTimeSharedPrefs.dart';

class TabLive extends StatefulWidget {
  const TabLive({Key? key}) : super(key: key);

  @override
  State<TabLive> createState() => _TabLiveState();
}

class _TabLiveState extends State<TabLive> {
  DateTime? _dateTime;
  double _currentSliderValue = 10;
  double onChangeValue = 0;

  // Future<String?> _dateTimePrefs() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(
  //       'dateTime', DateTime.parse(_dateTime.toString()).toString());
  //   final String? dateTimePrefs = prefs.getString('dateTime');
  //   print(dateTimePrefs);
  //   return dateTimePrefs;
  // }

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
          volumeRow(),
          Text('${_currentSliderValue.round()}'),
          const SizedBox(height: 25),
          Column(
            children: const [
              Text('Divider'),
              Icon(Icons.arrow_downward),
            ],
          ),
          const Divider(
            height: 20,
            thickness: 5,
            indent: 12,
            endIndent: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              datePicker(context),
              const SizedBox(width: 12),
              Column(children: [showSnackBar(context)]),
            ],
          ),

          const SizedBox(height: 20),
          // TODO: SimpleDialog widget
          // TODO: ExpansionPanel widget
          // TODO: TextField widget
        ],
      )),
      floatingActionButton: buildFloatingActionButton(context),
    );
  }

  Column datePicker(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: Theme.of(context).copyWith(
              textTheme:
                  const TextTheme(bodyLarge: TextStyle(color: Colors.black))),
          child: ElevatedButton(
            child: const Text('Pick a Date'),
            onPressed: () {
              _selectDate(context).then((date) {
                setState(() {
                  _dateTime = date!;
                });
                DateTimePreferences.setDateTime(_dateTime!);
              });
            },
          ),
        ),
        Text(
          _dateTime == null
              ? 'Date not selected'
              : DateTimePreferences.getDateTime()
                  .toString(), // DateTime.parse(_dateTime.toString())).toString()
        )
      ],
    );
  }

  ElevatedButton showSnackBar(BuildContext context) {
    return ElevatedButton(
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
        child: const Text('Snack Bar'));
  }

  Row volumeRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            tooltip: 'Volume down',
            icon: const Icon(Icons.volume_down),
            color: Colors.purple),
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
        IconButton(
          tooltip: 'Message',
          icon: const Icon(Icons.volume_up),
          color: Colors.purple,
          onPressed: () {},
        )
      ],
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton.extended(
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
    );
  }

  Future<DateTime?> _selectDate(BuildContext context) async {
    DateTime selectedDate = DateTime.now();

    final DateTime? piked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );

    if (piked != null && piked != selectedDate) {
      setState(() {
        selectedDate = piked;
      });
    }
    return selectedDate;
  }
}
