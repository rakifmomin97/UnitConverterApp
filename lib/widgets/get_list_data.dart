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
    ListItems(name: "Centimeters", value: 1),
    ListItems(name: "Meters", value: 2),
    ListItems(name: "Kilometers", value: 3),
    ListItems(name: "Miles", value: 4),
  ];

  static List<DropdownMenuItem<ListItems>> buildlengthMenu(List listItems) {
    List<DropdownMenuItem<ListItems>> items = [];
    for (ListItems listItem in listItems) {
      items.add(DropdownMenuItem(
        child: Text(listItem.name),
        value: listItem,
      ));
    }
    return items;
  }

  static List<ListItems> timeItemsList = [
    ListItems(name: "Seconds", value: 1),
    ListItems(name: "Minutes", value: 2),
    ListItems(name: "Hours", value: 3),
  ];

  static List<DropdownMenuItem<ListItems>> buildTimeMenu(List listItems) {
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
