import 'package:covid19ui/fever.dart';
import 'package:covid19ui/hand_wash.dart';
import 'package:flutter/material.dart';
import 'cough.dart';

import 'constraints.dart';
import 'headache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19 ',
      theme: ThemeData(
        primaryColor: Color(0xFFCDE3CE),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Covid 19')),
      ),
      body: Container(
        color: backgroundColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(40),
                constraints: BoxConstraints.expand(height: 200),
                decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [lightBlueIsh, lightGreen],
                        begin: const FractionalOffset(1.0, 1.0),
                        end: const FractionalOffset(0.2, 0.2),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
                child: Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Stay Home,\n Stay Safe',
                        style: titleStyleWhite,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'Symptoms',
                  style: TextStyle(
//                    backgroundColor: Colors.black,
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Headache();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Headache',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Fever();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Fever',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Cough();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Cough',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {},
                    child: Text(
                      'Tiredness',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {},
                    child: Text(
                      'Diarrhea',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  RaisedButton(
                    color: Color(0xFF348A7B),
                    onPressed: () {},
                    child: Text(
                      'Aches',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  'Prevention',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                splashColor: Colors.teal,
                color: Color(0xFF222B45),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HandWash();
                      },
                    ),
                  );
                },
                child: Text(
                  'Wash your hands',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                splashColor: Colors.teal,
                color: Color(0xFF222B45),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HandWash();
                      },
                    ),
                  );
                },
                child: Text(
                  'Avoid large events and mass gatherings.',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                splashColor: Colors.teal,
                color: Color(0xFF222B45),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HandWash();
                      },
                    ),
                  );
                },
                child: Text(
                  ' Don’t share personal items',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                splashColor: Colors.teal,
                color: Color(0xFF222B45),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HandWash();
                      },
                    ),
                  );
                },
                child: Text(
                  ' Clean and disinfect surfaces',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              RaisedButton(
                splashColor: Colors.teal,
                color: Color(0xFF222B45),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HandWash();
                      },
                    ),
                  );
                },
                child: Text(
                  'Avoid touching your eyes, nose and \nmouth.',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
