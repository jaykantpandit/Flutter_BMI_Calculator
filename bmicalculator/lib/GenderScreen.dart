import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'Constants.dart';
import 'ViewModel/homeViewModel.dart';

class Genderscreen extends StatefulWidget {
  Genderscreen({super.key});
  @override
  State<Genderscreen> createState() => _GenderscreenState();
}

class _GenderscreenState extends State<Genderscreen> {
  Gender? selectedGender = Gender.male;

  // @override
  // void initState() {
  //   super.initState();

  //   selectedGender = widget.gender;
  // }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homeviewmodel>(builder: (homeController) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {
                  selectedGender = Gender.male;
                  homeController.setGender(selectedGender!);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(
                            selectedGender == Gender.male ? 0.5 : 0.0),
                        spreadRadius: 0.2,
                        blurRadius: 10,
                      )
                    ]),
                child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 0, bottom: 0),
                        child: Container(
                          child: Column(
                            children: [
                              Icon(
                                FontAwesomeIcons.mars,
                                size: 100,
                                color: selectedGender == Gender.male
                                    ? Colors.white
                                    : Colors.grey,
                              ),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, bottom: 0),
                                  child: Center(
                                    child: Text(
                                      "Male",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: selectedGender == Gender.male
                                              ? Colors.white
                                              : Colors.grey,
                                          decoration: TextDecoration.none),
                                    ),
                                  ))
                            ],
                          ),
                        ))),
              )),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedGender = Gender.female;
                homeController.setGender(selectedGender!);
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(
                          selectedGender == Gender.female ? 0.5 : 0.0),
                      spreadRadius: 0.2,
                      blurRadius: 10,
                    )
                  ]),
              child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Padding(
                      padding: const EdgeInsets.only(top: 0, bottom: 0),
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 100,
                              color: selectedGender == Gender.female
                                  ? Colors.white
                                  : Colors.grey,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                child: Center(
                                  child: Text(
                                    "Female",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: selectedGender == Gender.female
                                            ? Colors.white
                                            : Colors.grey,
                                        decoration: TextDecoration.none),
                                  ),
                                ))
                          ],
                        ),
                      ))),
            ),
          )
        ],
      );
    });
  }
}
