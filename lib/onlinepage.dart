import 'package:flutter/material.dart';

class Onlinep extends StatefulWidget {
  const Onlinep({super.key});

  @override
  State<Onlinep> createState() => _OnlinepState();
}

class _OnlinepState extends State<Onlinep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171717),
      appBar: AppBar(
        backgroundColor: const Color(0xff171717),
        title: const Text('Online Reporting'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Illegal Wildlife Product Trade',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IBM',
                  fontSize: 20,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
