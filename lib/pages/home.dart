import 'package:flutter/material.dart';
import 'package:prescription_app/pages/add.dart';

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
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            color: Theme.of(context).colorScheme.primary,
            height: _height,
            width: _width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.only(
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
                          Text(
                            'To take',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(width: _width * 0.67),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Add()));
                              });
                            },
                            icon: Icon(
                              Icons.add_circle,
                              color: Theme.of(context).colorScheme.primary,
                              size: 28,
                            ),
                          )
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 8,
                                left: 10,
                                right: 10,
                              ),
                              child: SizedBox(
                                height: _height * 0.17,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.white,
                                  child: Row(
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
