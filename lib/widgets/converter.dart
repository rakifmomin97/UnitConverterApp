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

  static var timeConvert = [
    1.6667e-11,
    1.6667e-8,
    1.6667e-5,
    0.0166667,
    1,
    60,
    1440,
    10080,
    43800,
    525600,
    5.256e6,
    5.256e7
  ];

  static var areaConvert = [
    1e6,
    1,
    2.59e6,
    0.836127,
    0.092903,
    0.00064516,
    1000,
    4046.86
  ];

  static var dataConvert = [
    1.25e-7,
    0.000125,
    0.001,
    0.000128,
    0.125,
    1,
    0.131072,
    125,
    1000,
    134.218,
    125000,
    1e6,
    137439
  ];

  static var storageConvert = [
    0.125,
    125,
    128,
    125000,
    131072,
    1.25e8,
    1.342e8,
    1.25e11,
    1.374e11,
    1.25e14,
    1.407e14,
    1,
    1000,
    1024,
    1e6,
    1.049e6,
    1e9,
    1.074e9,
    1e12,
    1.1e12,
    1e15,
    1.126e15
  ];

  static var energyConvert = [
    1,
    1000,
    4.184,
    4184,
    3600,
    3.6e6,
    1.6022e-19,
    1055.06,
    1.055e8,
    1.35582
  ];

  static var frequencyConvert = [1, 1000, 1e6, 1e9];

  static var fuelConvert = [0.425144, 0.354006, 1, 100];

  static String convert(String units, int unit1, int unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    var res;

    switch (units) {
      case 'Length':
        res = number * lengthConvert[unit1] * (1 / lengthConvert[unit2]);
        break;

      case 'Time':
        res = number * timeConvert[unit1] * (1 / timeConvert[unit2]);
        break;

      case 'Area':
        res = number * areaConvert[unit1] * (1 / areaConvert[unit2]);
        break;

      case 'Data Transfer Rate':
        res = number * dataConvert[unit1] * (1 / dataConvert[unit2]);
        break;

      case 'Digital Storage':
        res = number * storageConvert[unit1] * (1 / storageConvert[unit2]);
        break;

      case 'Energy':
        res = number * energyConvert[unit1] * (1 / energyConvert[unit2]);
        break;

      case 'Frequency':
        res = number * frequencyConvert[unit1] * (1 / frequencyConvert[unit2]);
        break;

      case 'Fuel Economy':
        res = number * fuelConvert[unit1] * (1 / fuelConvert[unit2]);
        break;

      default:
    }
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
