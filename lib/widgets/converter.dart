class Converter {
  //Code to convert length
  static var lengthConvert = [
    1000,
    1,
    0.01,
    0.001,
    1e-6,
    1e-9,
    1609.34,
    0.9144,
    0.3048,
    0.0254,
    1852
  ];

  static String convertLength(int unit1, int unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);

    var res = number * lengthConvert[unit1] * (1 / lengthConvert[unit2]);

    return res.toStringAsFixed(3);
  }

  //Code to convert time
  static String convertTime(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);

    if (unit1 == unit2) {
      result = number.toStringAsFixed(3);
    } else if (unit1 == 'Second' && unit2 == 'Minute') {
      result = (number / 60).toStringAsFixed(3);
    } else if (unit1 == 'Second' && unit2 == 'Hour') {
      result = (number / 3600).toStringAsFixed(3);
    } else if (unit1 == 'Second' && unit2 == 'Day') {
      result = (number / 86400).toStringAsFixed(3);
    } else if (unit1 == 'Second' && unit2 == 'Week') {
      result = (number / 604800).toStringAsFixed(3);
    } else if (unit1 == 'Minute' && unit2 == 'Second') {
      result = (number * 60).toStringAsFixed(3);
    } else if (unit1 == 'Minute' && unit2 == 'Hour') {
      result = (number / 60).toStringAsFixed(3);
    } else if (unit1 == 'Minute' && unit2 == 'Day') {
      result = (number / 1440).toStringAsFixed(3);
    } else if (unit1 == 'Minute' && unit2 == 'Week') {
      result = (number / 10080).toStringAsFixed(3);
    } else if (unit1 == 'Hour' && unit2 == 'Second') {
      result = (number * 3600).toStringAsFixed(3);
    } else if (unit1 == 'Hour' && unit2 == 'Minute') {
      result = (number * 60).toStringAsFixed(3);
    } else if (unit1 == 'Hour' && unit2 == 'Day') {
      result = (number / 24).toStringAsFixed(3);
    } else if (unit1 == 'Hour' && unit2 == 'Week') {
      result = (number / 168).toStringAsFixed(3);
    } else if (unit1 == 'Day' && unit2 == 'Second') {
      result = (number * 86400).toStringAsFixed(3);
    } else if (unit1 == 'Day' && unit2 == 'Minute') {
      result = (number * 1440).toStringAsFixed(3);
    } else if (unit1 == 'Day' && unit2 == 'Hour') {
      result = (number * 24).toStringAsFixed(3);
    } else if (unit1 == 'Day' && unit2 == 'Week') {
      result = (number / 7).toStringAsFixed(3);
    } else if (unit1 == 'Week' && unit2 == 'Second') {
      result = (number * 604800).toStringAsFixed(3);
    } else if (unit1 == 'Week' && unit2 == 'Minute') {
      result = (number * 10080).toStringAsFixed(3);
    } else if (unit1 == 'Week' && unit2 == 'Hour') {
      result = (number * 168).toStringAsFixed(3);
    } else if (unit1 == 'Week' && unit2 == 'Day') {
      result = (number * 7).toStringAsFixed(3);
    }
    return result;
  }

  //Code to convert area
  static String convertArea(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);

    if (unit1 == unit2) {
      result = number.toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Square Meter') {
      result = (number * 1e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Square Mile') {
      result = (number / 2.59).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Square Yard') {
      result = (number * 1.196e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Square Foot') {
      result = (number * 1.076e7).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Square Inch') {
      result = (number * 1.55e9).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Hectare') {
      result = (number * 100).toStringAsFixed(3);
    } else if (unit1 == 'Square Kilometer' && unit2 == 'Acre') {
      result = (number * 247).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Square Kilometer') {
      result = (number / 1e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Square Mile') {
      result = (number / 2.59e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Square Yard') {
      result = (number * 1.196).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Square Foot') {
      result = (number * 10.764).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Square Inch') {
      result = (number * 1550).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Hectare') {
      result = (number / 10000).toStringAsFixed(3);
    } else if (unit1 == 'Square Meter' && unit2 == 'Acre') {
      result = (number / 4047).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Square Kilometer') {
      result = (number * 2.59).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Square Meter') {
      result = (number * 2.59e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Square Yard') {
      result = (number * 3.098e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Square Foot') {
      result = (number * 2.788e7).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Square Inch') {
      result = (number * 4.014e9).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Hectare') {
      result = (number * 259).toStringAsFixed(3);
    } else if (unit1 == 'Square Mile' && unit2 == 'Acre') {
      result = (number * 640).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Square Kilometer') {
      result = (number / 1.196e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Square Meter') {
      result = (number / 1.196).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Square Mile') {
      result = (number / 3.098e6).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Square Foot') {
      result = (number * 9).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Square Inch') {
      result = (number * 1296).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Hectare') {
      result = (number / 11960).toStringAsFixed(3);
    } else if (unit1 == 'Square Yard' && unit2 == 'Acre') {
      result = (number / 4840).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Square Kilometer') {
      result = (number / 1.076e7).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Square Meter') {
      result = (number / 10.764).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Square Mile') {
      result = (number / 2.788e7).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Square Yard') {
      result = (number / 9).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Square Inch') {
      result = (number * 144).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Hectare') {
      result = (number / 107639).toStringAsFixed(3);
    } else if (unit1 == 'Square Foot' && unit2 == 'Acre') {
      result = (number / 43560).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Square Kilometer') {
      result = (number / 1.55e9).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Square Meter') {
      result = (number / 1550).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Square Mile') {
      result = (number / 4.014e9).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Square Yard') {
      result = (number / 1296).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Square Foot') {
      result = (number / 144).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Hectare') {
      result = (number / 1.55e7).toStringAsFixed(3);
    } else if (unit1 == 'Square Inch' && unit2 == 'Acre') {
      result = (number / 6.273e6).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Kilometer') {
      result = (number / 100).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Meter') {
      result = (number * 10000).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Mile') {
      result = (number / 259).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Yard') {
      result = (number * 11960).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Foot') {
      result = (number * 107639).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Square Inch') {
      result = (number * 1.55e7).toStringAsFixed(3);
    } else if (unit1 == 'Hectare' && unit2 == 'Acre') {
      result = (number * 2.471).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Kilometer') {
      result = (number / 247).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Meter') {
      result = (number * 4047).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Mile') {
      result = (number / 640).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Yard') {
      result = (number * 4840).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Foot') {
      result = (number * 43560).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Square Inch') {
      result = (number * 6.273e6).toStringAsFixed(3);
    } else if (unit1 == 'Acre' && unit2 == 'Hectare') {
      result = (number / 2.471).toStringAsFixed(3);
    }
    return result;
  }
}
