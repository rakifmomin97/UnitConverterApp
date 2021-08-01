class Converter {
  //Arrays for different conversion factors
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

  static var massConvert = [
    1000,
    1,
    0.001,
    1e-6,
    1e-9,
    1016.05,
    907.185,
    6.35029,
    0.453592,
    0.0283495
  ];

  static var angleConvert = [
    1,
    0.9,
    0.0572958,
    0.0166667,
    57.2958,
    0.000277778
  ];

  static var pressureConvert = [1, 1e-5, 0.0689476, 1.01325, 0.00133322];

  static var speedConvert = [0.44704, 0.3048, 1, 0.277778, 0.514444];

  static var volumeConvert = [
    3.78541,
    0.946353,
    0.473176,
    0.24,
    0.0295735,
    0.0147868,
    0.00492892,
    1000,
    1,
    0.001,
    4.54609,
    1.13652,
    0.568261,
    0.284131,
    0.0177582,
    0.00591939,
    28.3168,
    0.0163871
  ];

  //Function where the conversion logic is written
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

      case 'Mass':
        res = number * massConvert[unit1] * (1 / massConvert[unit2]);
        break;

      case 'Plane Angle':
        res = number * angleConvert[unit1] * (1 / angleConvert[unit2]);
        break;

      case 'Pressure':
        res = number * pressureConvert[unit1] * (1 / pressureConvert[unit2]);
        break;

      case 'Speed':
        res = number * speedConvert[unit1] * (1 / speedConvert[unit2]);
        break;

      case 'Volume':
        res = number * volumeConvert[unit1] * (1 / volumeConvert[unit2]);
        break;

      default:
    }
    return res.toStringAsFixed(3);
  }

  //Function for temperature conversion: It has different formula for conversion
  static String convertTemperature(String unit1, String unit2, String value) {
    String result = "";

    if (value == "") {
      return result;
    }
    var number = int.parse(value);
    var res;
    if (unit1 == unit2) {
      return value;
    } else if (unit1 == 'Celsius' && unit2 == 'Fahrenheit') {
      res = (number * 9 / 5) + 32;
    } else if (unit1 == 'Celsius' && unit2 == 'Kelvin') {
      res = number + 273.15;
    } else if (unit1 == 'Fahrenheit' && unit2 == 'Celsius') {
      res = (number - 32) * 5 / 9;
    } else if (unit1 == 'Fahrenheit' && unit2 == 'Kelvin') {
      res = (number - 32) * 5 / 9 + 273.15;
    } else if (unit1 == 'Kelvin' && unit2 == 'Celsius') {
      res = number - 273.15;
    } else if (unit1 == 'Kelvin' && unit2 == 'Fahrenheit') {
      res = (number - 273.15) * 9 / 5 + 32;
    }

    return res.toStringAsFixed(3);
  }
}
