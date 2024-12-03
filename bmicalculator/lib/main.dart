import 'package:bmicalculator/ViewModel/homeViewModel.dart';
import 'package:bmicalculator/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculator();
}

class _BMICalculator extends State<BMICalculator> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () {
        Get.put(Homeviewmodel()); // Initialize the controller
      },
      home: HomePage(),
    );
  }
}
