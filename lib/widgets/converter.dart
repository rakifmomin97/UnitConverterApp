class Converter {
  static String convertTime(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    print("Number : $number");

    if (unit1 == unit2) {
      result = number.toStringAsFixed(3);
    } else if (unit1 == 'Seconds' && unit2 == 'Minutes') {
      result = (number / 60).toStringAsFixed(3);
    } else if (unit1 == 'Minutes' && unit2 == 'Seconds') {
      result = (number * 60).toStringAsFixed(3);
    } else if (unit1 == 'Seconds' && unit2 == 'Hours') {
      result = (number / 3600).toStringAsFixed(3);
    } else if (unit1 == 'Hours' && unit2 == 'Seconds') {
      result = (number * 3600).toStringAsFixed(3);
    } else if (unit1 == 'Minutes' && unit2 == 'Hours') {
      result = (number / 60).toStringAsFixed(3);
    } else if (unit1 == 'Hours' && unit2 == 'Minutes') {
      result = (number * 60).toStringAsFixed(3);
    }
    return result;
  }

  static String convertLength(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    print("Number : $number");

    if (unit1 == unit2) {
      result = number.toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Meter') {
      result = (number * 1000).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Centimeter') {
      result = (number * 100000).toStringAsFixed(3);
    } else if (unit1 == 'Kilometer' && unit2 == 'Millimeter') {
      result = "Undefined";
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
      result = "Undefined";
    } else if (unit1 == 'Millimeter' && unit2 == 'Meter') {
      result = (number / 1000).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Centimeter') {
      result = (number * 10).toStringAsFixed(3);
    } else if (unit1 == 'Millimeter' && unit2 == 'Mile') {
      result = "Undefined";
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
      result = "Undefined";
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
}
