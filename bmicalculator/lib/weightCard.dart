import 'package:bmicalculator/ViewModel/homeViewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'Constants.dart';
import 'ViewModel/homeViewModel.dart';

class WeightCard extends StatefulWidget {
  const WeightCard({super.key});

  @override
  State<WeightCard> createState() => _WeightCardState();
}

class _WeightCardState extends State<WeightCard> {
  double weight = 60.5;
  int age = 35;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homeviewmodel>(builder: (homeController) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kActiveCardColour),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    "WEIGHT",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    weight.toStringAsFixed(1),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () {
                          setState(() {
                            weight -= 0.1;
                            homeController.setWeight(weight);
                          });
                        },
                        // onLongPress: () {},
                        constraints: const BoxConstraints.tightFor(
                          width: 45.0,
                          height: 45.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: Icon(FontAwesomeIcons.minus),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () {
                          setState(() {
                            weight += 0.1;
                            homeController.setWeight(weight);
                          });
                        },
                        // onLongPress: onLongPressed ?? onLongPressed,
                        constraints: const BoxConstraints.tightFor(
                          width: 45.0,
                          height: 45.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: Icon(FontAwesomeIcons.plus),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kActiveCardColour),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text(
                    "AGE",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    age.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () {
                          setState(() {
                            age -= 1;
                            homeController.setAge(age);
                          });
                        },
                        // onLongPress: onLongPressed ?? onLongPressed,
                        constraints: const BoxConstraints.tightFor(
                          width: 45.0,
                          height: 45.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: Icon(FontAwesomeIcons.minus),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      RawMaterialButton(
                        elevation: 0.0,
                        onPressed: () {
                          setState(() {
                            age += 1;
                            homeController.setAge(age);
                          });
                        },
                        // onLongPress: onLongPressed ?? onLongPressed,
                        constraints: const BoxConstraints.tightFor(
                          width: 45.0,
                          height: 45.0,
                        ),
                        shape: const CircleBorder(),
                        fillColor: const Color(0xFF4C4F5E),
                        child: Icon(FontAwesomeIcons.plus),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}
