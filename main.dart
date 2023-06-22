import 'package:flutter/material.dart';

main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: const Text(
                    'Choose Operator',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  subtitle:
                      const Text('Choose the current operator for this number'),
                  trailing: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel')),
                ),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ))),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/airtel.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ))),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/banglalink.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ))),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/gp.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ))),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/robi.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    right: BorderSide(
                                      color: Colors.black,
                                      width: 1,
                                    ))),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/skitto.png',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            )),
                            height: 120,
                            width: 120,
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'images/teletalk.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ))
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Recharge'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMyBottomSheet(context);
        },
      ),
    );
  }
}
