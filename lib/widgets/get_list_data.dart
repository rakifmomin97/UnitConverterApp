import 'package:flutter/material.dart';
import 'package:unit_converter_application/models/list_items.dart';

class GetListData {
  static List<ListItems> parameterItemsList = [
    ListItems(name: "Length", value: 1),
    ListItems(name: "Time", value: 2),
    ListItems(name: "Area", value: 3),
  ];

  static List<ListItems> lengthItemsList = [
    ListItems(name: "Kilometer", value: 1),
    ListItems(name: "Meter", value: 2),
    ListItems(name: "Centimeter", value: 3),
    ListItems(name: "Millimeter", value: 4),
    ListItems(name: "Mile", value: 5),
    ListItems(name: "Yard", value: 6),
    ListItems(name: "Foot", value: 7),
    ListItems(name: "Inch", value: 8),
  ];

  static List<ListItems> timeItemsList = [
    ListItems(name: "Second", value: 1),
    ListItems(name: "Minute", value: 2),
    ListItems(name: "Hour", value: 3),
    ListItems(name: "Day", value: 4),
    ListItems(name: "Week", value: 5),
  ];

  static List<ListItems> areaItemsList = [
    ListItems(name: "Square Kilometer", value: 1),
    ListItems(name: "Square Meter", value: 2),
    ListItems(name: "Square Mile", value: 3),
    ListItems(name: "Square Yard", value: 4),
    ListItems(name: "Square Foot", value: 5),
    ListItems(name: "Square Inch", value: 6),
    ListItems(name: "Hectare", value: 7),
    ListItems(name: "Acre", value: 8),
  ];

  static List<DropdownMenuItem<ListItems>> buildMenu(List listItems) {
    List<DropdownMenuItem<ListItems>> items = [];
    for (ListItems listItem in listItems) {
      items.add(DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ));
    }
    return items;
  }
}
