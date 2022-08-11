import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
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
                  const Text('Pills to be taken at once:'),
                  SizedBox(width: _width * 0.05),
                  const Text('Number of times per day:')
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[800]!),
                      ),
                    ),
                  ),
                  const Text(
                    'X',
                    style: TextStyle(fontSize: 30),
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
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[900]!),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
