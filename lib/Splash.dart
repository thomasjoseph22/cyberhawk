import 'dart:async';

import 'package:cyberhawk/firstpage.dart';
import 'package:cyberhawk/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Splashp extends StatefulWidget {
  const Splashp({super.key});

  @override
  State<Splashp> createState() => _SplashpState();
}

class _SplashpState extends State<Splashp> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/report.png")),
          Text('cyberhawk'),
        ],
      ),
    );
  }
}
