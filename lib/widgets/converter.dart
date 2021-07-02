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
}
