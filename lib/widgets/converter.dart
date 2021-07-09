class Converter {
  
  //Code to convert length
  static String convertLength(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);

    if (unit1 == unit2) {
      result = number.toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Meter') {
      result = (number * 1000).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Centimeter') {
      result = (number * 100000).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Millimeter') {
      result = (number * 1e6).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Mile') {
      result = (number / 1.609).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Yard') {
      result = (number * 1094).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Foot') {
      result = (number * 3281).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Inch') {
      result = (number * 39370).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Kilometer') {
      result = (number / 1000).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Centimeter') {
      result = (number * 100).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Millimeter') {
      result = (number * 1000).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Mile') {
      result = (number / 1609).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Yard') {
      result = (number * 1.094).toStringAsFixed(3);
    } else if (unit1 == 'Meter' && unit2 == 'Inch') {
      result = (number * 39.37).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Kilometer') {
      result = (number / 100000).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Meter') {
      result = (number / 100).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Millimeter') {
      result = (number * 10).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Mile') {
      result = (number * 160934).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Yard') {
      result = (number / 91.44).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Foot') {
      result = (number / 30.48).toStringAsFixed(3);
    } else if (unit1 == 'Centimeter' && unit2 == 'Inch') {
      result = (number / 2.54).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Kilometer') {
      result = (number / 1e6).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Meter') {
      result = (number / 1000).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Centimeter') {
      result = (number * 10).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Mile') {
      result = (number / 1.609e6).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Yard') {
      result = (number / 914).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Foot') {
      result = (number / 305).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Inch') {
      result = (number / 25.4).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Kilometer') {
      result = (number * 1.609).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Meter') {
      result = (number * 1609).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Centimeter') {
      result = (number * 160934).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Millimeter') {
      result = (number * 1.609e6).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Yard') {
      result = (number * 1760).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Foot') {
      result = (number * 5280).toStringAsFixed(3);
    } else if (unit1 == 'Mile' && unit2 == 'Inch') {
      result = (number * 63360).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Kilometer') {
      result = (number / 1094).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Meter') {
      result = (number / 1.094).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Centimeter') {
      result = (number * 91.44).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Millimeter') {
      result = (number * 914).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Mile') {
      result = (number / 1760).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Foot') {
      result = (number * 3).toStringAsFixed(3);
    } else if (unit1 == 'Yard' && unit2 == 'Inch') {
      result = (number * 36).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Kilometer') {
      result = (number / 3281).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Meter') {
      result = (number / 3.281).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Centimeter') {
      result = (number * 30.48).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Millimeter') {
      result = (number * 305).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Mile') {
      result = (number / 5280).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Yard') {
      result = (number / 3).toStringAsFixed(3);
    } else if (unit1 == 'Foot' && unit2 == 'Inch') {
      result = (number * 12).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Kilometer') {
      result = (number / 39370).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Meter') {
      result = (number / 39.37).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Centimeter') {
      result = (number * 2.54).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Millimeter') {
      result = (number * 25.4).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Mile') {
      result = (number / 63360).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Yard') {
      result = (number / 36).toStringAsFixed(3);
    } else if (unit1 == 'Inch' && unit2 == 'Foot') {
      result = (number / 12).toStringAsFixed(3);
    }
    return result;
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
