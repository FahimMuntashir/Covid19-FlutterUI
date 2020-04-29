import 'package:flutter/cupertino.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF20BF55),
                      Color(0xFF01BAEF),
                    ]),
              ),
              child: Column(
                children: <Widget>[

                  Expanded(
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Image(
                            image: AssetImage("images/logo.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
