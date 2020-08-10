import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import './register.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

// void main() => runApp(Register());

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginState();
  }
}

class LoginState extends State<Login> {
  @override
  void initState() {
      
    super.initState();
  }


     
  @override
  Widget build(BuildContext context) {
     var box = Hive.box('dollarbox');
      // box.put("headname", "Dollarstir");
     var mymail= box.get("headname");
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
              child: ListView(
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
                              labelText: "$mymail",
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
                            child: Row(children: [Text("login"),Icon(Icons.lock_open,size: 26,)],mainAxisAlignment: MainAxisAlignment.spaceBetween,),
                            onPressed: null,
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
                                "Don\'t have account?",
                                style: TextStyle(color: Colors.white),
                              ),
                              RaisedButton(
                                child: Container(
                                  child: Text(
                                    "Register",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  // color: Colors.indigo,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) =>Register()
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
