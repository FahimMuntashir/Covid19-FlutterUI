import 'package:flutter/material.dart';

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
                  color: Colors.black,
                  fontSize: 28.0,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                RaisedButton(
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
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Fever',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Cough',
                    style: TextStyle(fontSize: 20.0),
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
                  onPressed: (){

                  },
                  child: Text(
                    'Tiredness',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),

                RaisedButton(
                  onPressed: (){

                  },
                  child: Text(
                    'Diarrhea',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                RaisedButton(
                  onPressed: (){

                  },

                  child: Text(
                    'Aches',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),

                  ),

                ),
              ],
            ),
//            Expanded(
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    child: GestureDetector(
//                      onTap: () {
//                        Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                            builder: (context) {
//                              return Headache();
//                            },
//                          ),
//                        );
//                      },
//                      child: ReusableCard(
//                        colour: Color(0xFFFFFFFF),
//                        cardChild: Text('hey')
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                    child: ReusableCard(
//                      colour: Color(0xFFFFFFFF),
//                      cardChild: Container(
//                        child: Text(
//                          'hey',
//                          style: TextStyle(color: Colors.black),
//                        ),
//                      ),
//                    ),
//                  ),
//                  Expanded(
//                      child: ReusableCard(
//                    colour: Color(0xFF30D397),
//                    cardChild: Text('hi',style: titileStyleBlack,)
//                  )),
//                ],
//              ),
//            ),
//            Center(
//              child: Text(
//                'Prevention',
//                style: TextStyle(
//                  color: Colors.black,
//                  fontSize: 28.0,
//                ),
//              ),
//            ),
//            Expanded(
//              child: ReusableCard(
//                colour: Color(0xFF30D397),
//                cardChild: null,
//              ),
//            ),
//            Expanded(
//              child: ReusableCard(
//                colour: Color(0xFF30D397),
//                cardChild: Text('hey '),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}

//class ReusableCard extends StatelessWidget {
//  ReusableCard({@required this.cardChild, this.colour});
//  final Widget cardChild;
//  final Color colour;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      margin: EdgeInsets.all(10.0),
//      decoration: BoxDecoration(
//        color: colour,
//        borderRadius: BorderRadius.circular(15.0),
//      ),
//    );
//  }
//}
//
