import 'package:cyberhawk/bloc/loginbloc.dart';
import 'package:cyberhawk/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final username = TextEditingController();
  final password = TextEditingController();
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
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextField(
                controller: username,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
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
              child: TextField(
                controller: password,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: const InputDecoration(
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
                    BlocProvider.of<LoginBloc>(context).add(GetLoginEvent(
                        password: password.text.toString(),
                        username: username.text.toString()));

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const Loginpage()),
                    // );
                  },
                  child: BlocConsumer<LoginBloc, LoginState>(
                    builder: (context, state) {
                      if (state is Loading) {
                        return const CircularProgressIndicator();
                      } else {
                        return const Text(
                          'Login',
                        );
                      }
                    },
                    listener: (context, state) {
                      if (state is LoginSuccess) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Loginpage())));
                      } else if (state is LoginError) {
                        Fluttertoast.showToast(
                            msg: "invalid password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER);
                      }
                    },
                  )

                  // child: const Text(
                  //   'Login',
                  // )

                  ),
            )
          ],
        ),
      ),
    );
  }
}
