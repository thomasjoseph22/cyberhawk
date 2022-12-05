// ignore: implementation_imports
import 'package:cyberhawk/demo.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 21),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 17, 17, 20),
        title: const Text('CYBER HAWK'),
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'We handle your Reportings.',
                style: TextStyle(
                  fontFamily: 'IBM',
                  fontSize: 40,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                color: const Color(0xffFFB11F),
                minWidth: 360,
                height: 50,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DemoPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Text('Report Crime'),
                    ),
                    Icon(Icons.arrow_forward)
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 80,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 38, 38, 86),
                        radius: 25,
                        child: Image.asset('assets/report.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          'Digital Guide',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 38, 38, 86),
                      radius: 70,
                      child: Image.asset('assets/rb.png'),
                    ),
                    const Text(
                      'REPORT',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xff3A3A4D),
                        radius: 35,
                        child: Image.asset('assets/da.png'),
                      ),
                      const Text(
                        'My Analytics',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int intex) {
                    return SingleChildScrollView(
                      child: Container(
                        height: 140,
                        width: 500,
                        color: const Color.fromARGB(255, 18, 18, 21),
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor:
                                      const Color.fromARGB(255, 75, 59, 59),
                                  radius: 20,
                                  child: Image.asset('assets/report.png'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          color: Colors.green,
                                          child: const Text('Online Reporting'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Container(
                                            color: const Color(0xff848484),
                                            child: const Text(
                                              'Instagram',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: const Color(0xff848484),
                                          child: const Text(
                                            'Suspect',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 280,
                                      child: InkWell(
                                        child: const Text(
                                          'Lorem ipsum dolor sit amet\nhttps://www.flutterbeads.com/add-border-to-container-flutter/',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
