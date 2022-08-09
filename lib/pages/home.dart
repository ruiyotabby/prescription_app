import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 252, 215, 228),
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
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 1, 47, 116),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              height: _height * 0.72,
              width: _width,
              child: Column(
                children: [
                  SizedBox(height: _height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'To take',
                        style: TextStyle(
                          color: Color.fromARGB(255, 252, 215, 228),
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: _width * 0.67),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle,
                          color: Color.fromARGB(255, 252, 215, 228),
                          size: 28,
                        ),
                      )
                    ],
                  ),
                  ListView.builder(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: _height * 0.17,
                          child: Card(
                            color: Colors.white,
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.medication,
                                      size: 50,
                                    ),
                                  ],
                                ),
                                SizedBox(width: _width * 0.05),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        SizedBox(height: _height * 0.01),
                                        const Text('data'),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
