class Converter {
  static String  convertTime(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    print("Number : $number");

    if (unit1 == unit2) {
      result = number.toStringAsFixed(5);
    } else if (unit1 == 'Seconds' && unit2 == 'Minutes') {
      result = (number / 60).toStringAsFixed(5);
    } else if (unit1 == 'Minutes' && unit2 == 'Seconds') {
      result = (number * 60).toStringAsFixed(5);
    } else if (unit1 == 'Seconds' && unit2 == 'Hours') {
      result = (number / 3600).toStringAsFixed(5);
    } else if (unit1 == 'Hours' && unit2 == 'Seconds') {
      result = (number * 3600).toStringAsFixed(5);
    } else if (unit1 == 'Minutes' && unit2 == 'Hours') {
      result = (number / 60).toStringAsFixed(5);
    } else if (unit1 == 'Hours' && unit2 == 'Minutes') {
      result = (number * 60).toStringAsFixed(5);
    }
    return result;
  }


  static String  convertLength(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    print("Number : $number");

    if (unit1 == unit2) {
      result = number.toStringAsFixed(7);
    } else if (unit1 == 'Centimeters' && unit2 == 'Meters') {
      result = (number / 100).toStringAsFixed(7);
    } else if (unit1 == 'Centimeters' && unit2 == 'Kilometers') {
      result = (number / 100000).toStringAsFixed(7);
    } else if (unit1 == 'Centimeters' && unit2 == 'Miles') {
      result = (number / 160934).toStringAsFixed(7);
    } else if (unit1 == 'Meters' && unit2 == 'Centimeters') {
      result = (number * 100).toStringAsFixed(7);
    } else if (unit1 == 'Meters' && unit2 == 'Kilometers') {
      result = (number / 1000).toStringAsFixed(7);
    } else if (unit1 == 'Meters' && unit2 == 'Miles') {
      result = (number / 1609).toStringAsFixed(7);
    } else if (unit1 == 'Kilometers' && unit2 == 'Centimeters') {
      result = (number * 100000).toStringAsFixed(7);
    } else if (unit1 == 'Kilometers' && unit2 == 'Meters') {
      result = (number * 1000).toStringAsFixed(7);
    } else if (unit1 == 'Kilometers' && unit2 == 'Miles') {
      result = (number / 1.609).toStringAsFixed(7);
    } else if (unit1 == 'Miles' && unit2 == 'Centimeters') {
      result = (number * 160934).toStringAsFixed(7);
    } else if (unit1 == 'Miles' && unit2 == 'Meters') {
      result = (number * 1609).toStringAsFixed(7);
    } else if (unit1 == 'Miles' && unit2 == 'Kilometers') {
      result = (number * 1.609).toStringAsFixed(7);
    }
    return result;
  }
}
