import 'package:flutter/material.dart';
import 'package:unit_converter_application/models/list_items.dart';
import 'package:velocity_x/velocity_x.dart';

class GetListData {
  static List<ListItems> parameterItemsList = [
    ListItems(name: "Area", value: 0),
    ListItems(name: "Data Transfer Rate", value: 1),
    ListItems(name: "Digital Storage", value: 2),
    ListItems(name: "Energy", value: 3),
    ListItems(name: "Frequency", value: 4),
    ListItems(name: "Fuel Economy", value: 5),
    ListItems(name: "Length", value: 6),
    ListItems(name: "Time", value: 12),
  ];

  static List<ListItems> lengthItemsList = [
    ListItems(name: "Kilometer", value: 0),
    ListItems(name: "Meter", value: 1),
    ListItems(name: "Centimeter", value: 2),
    ListItems(name: "Millimeter", value: 3),
    ListItems(name: "Micrometer", value: 4),
    ListItems(name: "Nanometer", value: 5),
    ListItems(name: "Mile", value: 6),
    ListItems(name: "Yard", value: 7),
    ListItems(name: "Foot", value: 8),
    ListItems(name: "Inch", value: 9),
    ListItems(name: "Nautical Mile", value: 10),
  ];

  static List<ListItems> timeItemsList = [
    ListItems(name: "Nanosecond", value: 0),
    ListItems(name: "Microsecond", value: 1),
    ListItems(name: "Millisecond", value: 2),
    ListItems(name: "Second", value: 3),
    ListItems(name: "Minute", value: 4),
    ListItems(name: "Hour", value: 5),
    ListItems(name: "Day", value: 6),
    ListItems(name: "Week", value: 7),
    ListItems(name: "Month", value: 8),
    ListItems(name: "Calender Year", value: 9),
    ListItems(name: "Decade", value: 10),
    ListItems(name: "Century", value: 11),
  ];

  static List<ListItems> areaItemsList = [
    ListItems(name: "Square Kilometer", value: 0),
    ListItems(name: "Square Meter", value: 1),
    ListItems(name: "Square Mile", value: 2),
    ListItems(name: "Square Yard", value: 3),
    ListItems(name: "Square Foot", value: 4),
    ListItems(name: "Square Inch", value: 5),
    ListItems(name: "Hectare", value: 6),
    ListItems(name: "Acre", value: 7),
  ];

  static List<ListItems> dataItemsList = [
    ListItems(name: "Bit per second", value: 0),
    ListItems(name: "Kilobit per second", value: 1),
    ListItems(name: "Kilobyte per second", value: 2),
    ListItems(name: "Kibibit per second", value: 3),
    ListItems(name: "Megabit per second", value: 4),
    ListItems(name: "Megabyte per second", value: 5),
    ListItems(name: "Mebibit per second", value: 6),
    ListItems(name: "Gigabit per second", value: 7),
    ListItems(name: "Gigabyte per second", value: 8),
    ListItems(name: "Gibibit per second", value: 9),
    ListItems(name: "Terabit per second", value: 10),
    ListItems(name: "Terabyte per second", value: 11),
    ListItems(name: "Tebibit per second", value: 12),
  ];

  static List<ListItems> storageItemsList = [
    ListItems(name: "Bit", value: 0),
    ListItems(name: "Kilobit", value: 1),
    ListItems(name: "Kibibit", value: 2),
    ListItems(name: "Megabit", value: 3),
    ListItems(name: "Mebibit", value: 4),
    ListItems(name: "Gigabit", value: 5),
    ListItems(name: "Gibibit", value: 6),
    ListItems(name: "Terabit", value: 7),
    ListItems(name: "Tebibit", value: 8),
    ListItems(name: "Petabit", value: 9),
    ListItems(name: "Pebibit", value: 10),
    ListItems(name: "Byte", value: 11),
    ListItems(name: "Kilobyte", value: 12),
    ListItems(name: "Kibibyte", value: 13),
    ListItems(name: "Megabyte", value: 14),
    ListItems(name: "Mebibyte", value: 15),
    ListItems(name: "Gigabyte", value: 16),
    ListItems(name: "Gibibyte", value: 17),
    ListItems(name: "Terabyte", value: 18),
    ListItems(name: "Tebibyte", value: 19),
    ListItems(name: "Petabyte", value: 20),
    ListItems(name: "Pebibyte", value: 21),
  ];

  static List<ListItems> energyItemsList = [
    ListItems(name: "Joule", value: 0),
    ListItems(name: "Kilojoule", value: 1),
    ListItems(name: "Gram calorie", value: 2),
    ListItems(name: "Kilocalorie", value: 3),
    ListItems(name: "Watt hour", value: 4),
    ListItems(name: "Kilowatt hour", value: 5),
    ListItems(name: "Electronvolt", value: 6),
    ListItems(name: "British thermal unit", value: 7),
    ListItems(name: "US therm", value: 8),
    ListItems(name: "Foot-pound", value: 9),
  ];

  static List<ListItems> frequencyItemsList = [
    ListItems(name: "Hertz", value: 0),
    ListItems(name: "Kilohertz", value: 1),
    ListItems(name: "Megahertz", value: 2),
    ListItems(name: "Gigahertz", value: 3),
  ];

  static List<ListItems> fuelItemsList = [
    ListItems(name: "Miles per gallon", value: 0),
    ListItems(name: "Miles per gallon (Imperial)", value: 1),
    ListItems(name: "Kilometer per liter", value: 2),
    ListItems(name: "Liter per 100 kilometers", value: 3),
  ];

  static List<DropdownMenuItem<ListItems>> buildMenu(List listItems) {
    List<DropdownMenuItem<ListItems>> items = [];
    for (ListItems listItem in listItems) {
      items.add(DropdownMenuItem(
        child: Text(listItem.name).centered(),
        value: listItem,
      ));
    }
    return items;
  }
}
