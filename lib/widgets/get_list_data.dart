import 'package:flutter/material.dart';
import 'package:unit_converter_application/models/list_items.dart';

class GetListData {
  static List<ListItems> parameterItemsList = [
    ListItems(name: "Length", value: 1),
    ListItems(name: "Time", value: 2),
  ];

  static List<DropdownMenuItem<ListItems>> buildParameterMenu(List listItems) {
    List<DropdownMenuItem<ListItems>> items = [];
    for (ListItems listItem in listItems) {
      items.add(DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ));
    }
    return items;
  }

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
    ListItems(name: "Seconds", value: 1),
    ListItems(name: "Minutes", value: 2),
    ListItems(name: "Hours", value: 3),
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
