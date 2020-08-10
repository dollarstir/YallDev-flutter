import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import './login.dart';

// void main() => runApp(Register());

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  void login() {
    print("login");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Container(
                child: Image.asset(
                  'assets/images/log.png',
                ),
                width: 150,
                height: 150,
              ),
            ),

            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.all(Radius.circular(10)),
            // ),
            // color: Colors.blue,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            // obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email Address',
                              fillColor: Colors.amberAccent,
                            ),

                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: TextField(
                            // obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
                              fillColor: Colors.amberAccent,
                            ),

                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            child: Text("Register"),
                            onPressed: login,
                          ),
                          width: 250,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Text(
                                "Already have account?",
                                style: TextStyle(color: Colors.white),
                              ),
                              RaisedButton(
                                child: Container(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  // color: Colors.indigo,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>Login()
                                  ));
                                },
                                color: Colors.indigo,
                              ),
                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          ),
                          width: 280,
                          height: 40,
                          margin: EdgeInsets.only(
                            top: 20,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Colors.white,
                          ),
                          padding: EdgeInsets.only(top: 10),
                        ),
                      ],
                    ),
                  ),
                ],

                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.indigo,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
