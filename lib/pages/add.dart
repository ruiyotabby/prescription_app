import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    // Future<TimeOfDay?> selectedItem = showTimePicker(
    //   context: context,
    //   initialTime: TimeOfDay.now(),
    //   builder: (context, child) {
    //     return Directionality(textDirection: TextDirection.ltr, child: child!);
    //   },
    // );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ],
                // begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.mirror,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[800]!),
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.primary,
                    constraints: BoxConstraints(maxWidth: _width * 0.95),
                    labelText: 'Name of the medication to be taken',
                    labelStyle: TextStyle(color: Colors.grey[700]),
                  ),
                  textCapitalization: TextCapitalization.sentences,
                  cursorColor: Colors.grey[500],
                ),
                SizedBox(height: _height * 0.03),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Pills to be taken at once:',
                      style: TextStyle(color: Color(0xFFF4D9DE)),
                    ),
                    SizedBox(width: _width * 0.05),
                    const Text(
                      'Number of times per day:',
                      style: TextStyle(color: Color(0xFFF4D9DE)),
                    )
                  ],
                ),
                SizedBox(height: _height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: _width * 0.01),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxHeight: _height * 0.06,
                          maxWidth: _width * 0.2,
                        ),
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[800]!),
                        ),
                      ),
                    ),
                    const Text(
                      'X',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFF4D9DE),
                      ),
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        constraints: BoxConstraints(
                          maxHeight: _height * 0.06,
                          maxWidth: _width * 0.2,
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[900]!)),
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[900]!),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: _height * 0.04),
                const Text(
                  'Select the time you took the medicine to calculate your next intake',
                  style: TextStyle(color: Color(0xFFF4D9DE)),
                ),
                // SizedBox(
                //   width: _width * 0.7,
                //   height: _height * 0.3,
                //   child: TimeSpinner(),
                // ),
                TextField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimeSpinner extends StatelessWidget {
  const TimeSpinner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimePickerSpinner(
        time: DateTime.now(),
        is24HourMode: false,
        itemHeight: 45,
        spacing: 20,
        onTimeChange: (p0) {},
        normalTextStyle: TextStyle(fontSize: 27, color: Colors.grey[800]),
        highlightedTextStyle:
            const TextStyle(fontSize: 32, color: Colors.black));
  }
}
