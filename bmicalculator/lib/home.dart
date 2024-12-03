import 'package:bmicalculator/CalculatorBrain.dart';
import 'package:bmicalculator/Constants.dart';
import 'package:bmicalculator/GenderScreen.dart';
import 'package:bmicalculator/ViewModel/homeViewModel.dart';
import 'package:bmicalculator/heightSection.dart';
import 'package:bmicalculator/resultPage.dart';
import 'package:bmicalculator/weightCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'CalculateSwipeButton.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkMode = false;
  double height = 140.0;
  Gender gender = Gender.male;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homeviewmodel>(builder: (homeController) {
      return Scaffold(
          appBar: AppBar(
              title: Text(
                'BMI CALCULATOR',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color(0xFF0A0E21)),
          // child: NestedScrollView(
          //     headerSliverBuilder:
          //         (BuildContext context, bool innerBoxIsScrolled) {
          //       return <Widget>[
          //         CupertinoSliverNavigationBar(
          //           largeTitle: Text('BMI Calculator',
          //               style: TextStyle(color: isDarkModef(isDarkMode))),
          //           backgroundColor: const Color(0xFF0A0E21),
          //         )
          //       ];
          //     },
          body: Container(
            color: Color(0xFF0A0E21),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Genderscreen(),
                  HeightSection(),
                  WeightCard(),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  CalculateSwipeButton(onPressed: onSwipe)
                ],
              ),
            ),
          ));
    });
  }

  void onSwipe() {
    print(Get.find<Homeviewmodel>().gender);
    double height =
        double.parse(Get.find<Homeviewmodel>().height.toStringAsFixed(1));
    double weight =
        double.parse(Get.find<Homeviewmodel>().weight.toStringAsFixed(1));
    print(Get.find<Homeviewmodel>().age.toStringAsFixed(1));

    CalculatorBrain cal = CalculatorBrain(height: height, weight: weight);
    cal.calculateBMI();
    print(cal.getResult());
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(
                  bmiResult: cal.calculateBMI(),
                  resultText: cal.getResult(),
                  interpretation: cal.getInterpretation(),
                )));
  }
}

isDarkModef(bool isDark) {
  if (isDark) {
    return Colors.black;
  } else {
    return Colors.white;
  }
}
