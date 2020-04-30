
import 'package:flutter/material.dart';

class Headache extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'The virus appears to spread easily among people, '
              'and more continues to be discovered over time about how '
              'it spreads. Data has shown that it spreads from person to person'
              ' among those in close contact (within about 6 feet, or 2 meters). '
              'The virus spreads by respiratory droplets released when someone '
              'with the virus coughs, sneezes or talks. These droplets can be'
              ' inhaled or land in the mouth or nose of a person nearby.',
          style: TextStyle(
            fontSize: 20.0
          ),

        ),
      ),
    );
  }
}
