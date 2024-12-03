import 'package:flutter/material.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';

import 'Constants.dart';

class CalculateSwipeButton extends StatelessWidget {
  CalculateSwipeButton({required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SwipeButton.expand(
        thumb: Icon(
          Icons.double_arrow_rounded,
          color: kInactiveCardColour,
        ),
        child: Text(
          "Swipe to calculate BMI ...",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        activeThumbColor: Colors.blue,
        activeTrackColor: kActiveCardColour,
        onSwipe: onPressed // () {
        // onPressed;
        // Navigator.push(
        // context, MaterialPageRoute(builder: (builder) => ResultPage()));
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text("Swipped"),
        //     backgroundColor: Colors.green,
        //   ),
        // );
        // },
        );
  }
}
