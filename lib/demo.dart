import 'package:cyberhawk/firstpage.dart';
import 'package:cyberhawk/secpage.dart';
import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Report'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "online",
              ),
              Tab(text: "Offline")
            ],
          ),
          elevation: 0,
        ),
        body: const TabBarView(
          children: [
            Firstpage(),
            Secpage(),
          ],
        ),
      ),
    );
  }
}
