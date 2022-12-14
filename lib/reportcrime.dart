import 'package:cyberhawk/onlinepage.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 17, 17, 21),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Report'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Onlinep()));
                }),
                child: Container(
                  padding: const EdgeInsets.all(25),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: Column(
                    children: [
                      Image.asset('assets/browser.png'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Online Reporting',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.white)),
                child: Column(
                  children: [
                    Image.asset('assets/map.png'),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Field Reporting',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
