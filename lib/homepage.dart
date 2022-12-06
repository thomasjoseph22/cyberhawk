import 'package:cyberhawk/secondpage.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 25),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 18, 17, 17),
                backgroundImage: AssetImage('assets/report.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Cyber Hawk",
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(Icons.logout),
          )
        ],
        elevation: 0, //to remove app bar
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'IBM',
                    fontSize: 50,
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(7),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'username',

                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(7),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  // labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: MaterialButton(
                  color: const Color(0xffFFB11F),
                  minWidth: 360,
                  height: 50,
                  //  height: 50,
                  onPressed: () {
                    // Fluttertoast.showToast(
                    //     msg: "This is Center Short Toast",
                    //     backgroundColor: Colors.red,
                    //     textColor: Colors.white,
                    //     fontSize: 16.0);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Loginpage()),
                    );
                  },
                  child: const Text(
                    'Login',
                  )),
            )
          ],
        ),
      ),
    );
  }
}
