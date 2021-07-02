import 'package:flutter/material.dart';
import 'dart:convert';

class Converter {
  static String convertTime(
      @required String unit1, @required String unit2, @required String value) {
    var number = int.parse(value);
    String result;
    if (unit1 == unit2) {
      result = number.toString();
      return result;
    }
    throw "Error converting value";
  }
}
