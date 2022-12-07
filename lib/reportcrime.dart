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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Row(
                children: [
                  Container(
                    height: 800,
                    child: IconButton(
                      icon: Image.asset('assets/browser.png'),
                      iconSize: 100,
                      alignment: Alignment.centerLeft,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
