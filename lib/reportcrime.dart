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
      ),
    );
  }
}
