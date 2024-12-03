// ignore: file_names
import 'package:get/get.dart';

import '../Constants.dart';

class Homeviewmodel extends GetxController {
  Gender _gender = Gender.male;
  double _height = 160.0;
  double _weight = 60.0;
  int _age = 30;

  Gender get gender => _gender;
  double get height => _height;
  double get weight => _weight;
  int get age => _age;

  void setGender(Gender? gender) {
    if (gender != null) {
      _gender = gender;
      update();
    }
  }

  void setHeight(double height) {
    _height = height;
    update();
  }

  void setWeight(double weight) {
    _weight = weight;
    update();
  }

  void setAge(int age) {
    _age = age;
    update();
  }
}
