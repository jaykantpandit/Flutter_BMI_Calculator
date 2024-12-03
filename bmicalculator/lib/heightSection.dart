import 'package:bmicalculator/ViewModel/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'Constants.dart';

class HeightSection extends StatefulWidget {
  const HeightSection({super.key});

  @override
  State<HeightSection> createState() => _HeightSectionState();
}

class _HeightSectionState extends State<HeightSection> {
  double height = 130.0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homeviewmodel>(builder: (homeController) {
      return Center(
          child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: (20)),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: kActiveCardColour,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                        decoration: TextDecoration.none),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toStringAsFixed(1),
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  decoration: TextDecoration.none),
                            ),
                            Text(
                              " cm",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                  decoration: TextDecoration.none),
                            ),
                          ]),
                    ),
                  ),
                  Slider(
                    value: height,
                    min: 120.0,
                    max: 210.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue;
                        homeController.setHeight(height);
                      });
                    },
                  )

                  // Slider(
                  //   value: _currentSliderValue,
                  //   max: 100,
                  //   divisions: 5,
                  //   label: _currentSliderValue.round().toString(),
                  //   onChanged: (double value) {
                  //     setState(() {
                  //       _currentSliderValue = value;
                  //     });
                  //   },
                  // ),
                ],
              )));
    });
  }
}
