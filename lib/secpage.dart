import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Secpage extends StatefulWidget {
  const Secpage({super.key});

  @override
  State<Secpage> createState() => _SecpageState();
}

class _SecpageState extends State<Secpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/par.jpg'),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 10),
              child: Container(
                color: const Color.fromARGB(195, 36, 51, 68),
                child: const Text(
                  'Instagram',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Wild pet trade',
                style: TextStyle(
                    fontFamily: 'IBM', fontSize: 25, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'https://in.images.search.yahoo.com/yhs/search;_E',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Aware of species',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IBM',
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: SizedBox(
                              child: ToggleSwitch(
                                customWidths: const [70.0, 40.0],
                                cornerRadius: 20.0,
                                activeBgColors: const [
                                  [Color.fromARGB(255, 47, 161, 19)],
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.grey,
                                inactiveFgColor: Colors.white,
                                totalSwitches: 1,
                                labels: const [
                                  'YES',
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Is there any Suspect',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IBM',
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: SizedBox(
                              child: ToggleSwitch(
                                customWidths: const [70.0, 40.0],
                                cornerRadius: 20.0,
                                activeBgColors: const [
                                  [Color.fromARGB(255, 152, 160, 150)],
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.grey,
                                inactiveFgColor: Colors.white,
                                totalSwitches: 1,
                                labels: const [
                                  'NO',
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Is there any Suspect',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IBM',
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: SizedBox(
                              child: ToggleSwitch(
                                customWidths: const [70.0, 40.0],
                                cornerRadius: 20.0,
                                activeBgColors: const [
                                  [Color.fromARGB(255, 152, 160, 150)],
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.grey,
                                inactiveFgColor: Colors.white,
                                totalSwitches: 1,
                                labels: const [
                                  'NO',
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 200,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 0,
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 10,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'comments',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IBM',
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the indus try???s standard dummy text ever since the 1500s,',
                        overflow: TextOverflow.fade,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'IBM',
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
