import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.pink[100],
        height: _height,
        width: _width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: const [
                Text('First Row'),
              ],
            ),
            SizedBox(height: _height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('DATE'),
                    Text('DAY'),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text('DATE'),
                    Text('DAY'),
                  ],
                ),
              ],
            ),
            SizedBox(height: _height * 0.04),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              height: _height * 0.75,
              width: _width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('To Take'),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add_circle))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
