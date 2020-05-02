import 'package:flutter/material.dart';

class Fever extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('A fever is a common sign of illness,'
            'but thats not necessarily a bad thing.'
            '  In fact, fevers seem to play a key role in '
            ' fighting infections. So should you treat a fever '
            ' or let the fever run its course? Heres help making the call.'
            ' These recommendations are for people who are generally healthy'
            ' — for instance, those who are not immunocompromised or '
            '  taking chemotherapy drugs and havent recently had surgery.'
            ' The values listed in the table below are for temperatures'
            '  taken with rectal and oral thermometers. These thermometers'
            ' provide the most accurate measurement of core body temperature.'
            ' Other types of thermometers, such as ear (tympanic membrane) '
            ' or forehead (temporal artery) thermometers, although convenient,'
            ' provide less accurate temperature measurements.',style: TextStyle(fontSize: 20.0),),
      ),
    );
  }
}
