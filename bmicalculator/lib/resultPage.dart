import 'package:flutter/material.dart';

import 'Constants.dart';

class ResultPage extends StatefulWidget {
  const ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "BMI Result",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xFF0A0E21)),
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFF0A0E21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Your Result",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: kActiveCardColour),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.only(top: 40)),
                              Text(
                                widget.resultText,
                                style: TextStyle(
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 50, bottom: 50),
                                child: Text(
                                  widget.bmiResult,
                                  style: TextStyle(
                                      fontSize: 100,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                              Text("Normal BMI range:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.grey)),
                              Text(
                                "18.5 to 24.9 (kg/m\u00B2)",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none,
                                    color: Colors.grey),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 30, bottom: 40),
                                child: Text(
                                  widget.interpretation,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none,
                                      color: Colors.grey[350]),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 89,
                        child: Center(
                          child: Text(
                            "Recalculate BMI",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.red,
                      )))
            ],
          )),
    );
  }
}
