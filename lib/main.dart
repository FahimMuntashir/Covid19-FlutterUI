import 'package:flutter/material.dart';

void main() => runApp(CovidUI());

class CovidUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage(),
      theme: ThemeData().copyWith(
        primaryColor: Colors.teal,
      ),
    );
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Covid 19',
            style: TextStyle(),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF20BF55),
              Color(0xFF01BAEF),
            ],
          ),
          image: DecorationImage(

            image: AssetImage("images/logo.png"),

          ),
        ),
      ),
    );
  }
}
