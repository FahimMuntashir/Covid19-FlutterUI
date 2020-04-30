import 'package:flutter/material.dart';

import 'constraints.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(40),
              constraints: BoxConstraints.expand(height: 225),
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
                  color: Colors.black,
                  fontSize: 28.0,
                ),
              ),
            ),
           Expanded(child: Row(
             children: <Widget>[
               Expanded(child: ReusableCard()),
               Expanded(child: ReusableCard(),),
               Expanded(child: ReusableCard()),

             ],
           ),),
           Expanded(child: ReusableCard(),),
           Expanded(child: ReusableCard()),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFF5494FB),
        borderRadius: BorderRadius.circular(15.0),
      ),
    );
  }
}
