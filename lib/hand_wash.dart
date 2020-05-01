import 'package:flutter/material.dart';

class HandWash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Text(
            'Handwashing requires five simple steps:\n\n\n'
            'Wet: Put both your hands under clean, running water.\n\n'
            'Lather: Apply a generous amount of soap to the inside and back of your hands as well as your fingertips. Wash your hands for at least 20 seconds (sing happy birthday) and don’t forget to wash under jewelry and fingernails. Your fingertips are especially important as people often put their fingers on their face, nose, and eyes. This is how the virus spreads.\n\n'
            'Scrub: Rub both hands together and move your fingertips around both hands. You don’t need a scrub brush. You don’t need to make harsh, scrubbing movements.\n\n'
            'Rinse: Return both hands to the running water and gently wash away the soap.'
            'Dry: Completely dry the water from your hands. Using a disposable towel (paper towel) is best to avoid leaving germs on towels. Air dryers, commonly found in public bathrooms, are also effective.',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
