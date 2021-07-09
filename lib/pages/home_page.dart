import 'package:flutter/material.dart';
import 'package:unit_converter_application/models/list_items.dart';
import 'package:unit_converter_application/widgets/converter.dart';
import 'package:unit_converter_application/widgets/get_list_data.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _ParameterValue;
  bool valError = false;
  var _unit1Value;
  var _unit2Value;
  var _value1;
  var _value2;
  var _textField1 = TextEditingController();
  var _textField2 = TextEditingController();
  List<ListItems> paramList = GetListData.parameterItemsList;
  List<ListItems> unit = [];
  List<DropdownMenuItem<ListItems>> unitList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Unit Converter".text.xl4.black.make().centered(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          60.heightBox,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              border: Border.all(),
            ),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<ListItems>(
                isExpanded: true,
                hint: "Select parameter".text.make().centered(),
                value: _ParameterValue,
                items: GetListData.buildParameterMenu(paramList),
                onChanged: (value) {
                  setState(() {
                    _ParameterValue = value;
                    _textField1.text = "";
                    _textField2.text = "";
                    if (_unit1Value != null || _unit2Value != null) {
                      _unit1Value = null;
                      _unit2Value = null;
                    }
                    if (_ParameterValue.name == 'Length') {
                      unit = GetListData.lengthItemsList;
                      unitList = GetListData.buildMenu(unit);
                    } else if (_ParameterValue.name == 'Time') {
                      unit = GetListData.timeItemsList;
                      unitList = GetListData.buildMenu(unit);
                    }
                    print(GetListData.buildParameterMenu(paramList));
                    print(unitList);
                  });
                },
              ).centered(),
            ),
          ).px32(),
          40.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _textField1,
                    decoration: InputDecoration(
                      hintText: "Enter Value",
                      errorText: valError
                          ? "Please select parameter or unit first"
                          : null,
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      _value1 = value;
                      if (_textField1.text.isEmpty) {
                        _textField2.text = "";
                        setState(() {
                          valError = false;
                        });
                      } else if (_ParameterValue == null ||
                          _unit1Value == null ||
                          _unit2Value == null) {
                        setState(() {
                          valError = true;
                        });
                      } else {
                        setState(() {
                          valError = false;
                        });

                        if (_ParameterValue.name == 'Time') {
                          var result = Converter.convertTime(
                              _unit1Value.name, _unit2Value.name, _value1);
                          _textField2.text = result;
                        } else if (_ParameterValue.name == 'Length') {
                          var result = Converter.convertLength(
                              _unit1Value.name, _unit2Value.name, _value1);
                          _textField2.text = result;
                        }
                      }
                    },
                  ),
                ),
              ),
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _textField2,
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: "Enter Value",
                    ),
                    onChanged: (value) {
                      _value2 = value;
                    },
                  ),
                ),
              ),
            ],
          ),
          10.heightBox,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<ListItems>(
                        isExpanded: true,
                        hint: "Select Unit".text.make(),
                        value: _unit1Value,
                        items: unitList,
                        onChanged: (value) {
                          setState(() {
                            _unit1Value = value;
                            _textField1.text = "";
                            _textField2.text = "";
                          });
                        },
                      ),
                    ),
                  ),
                ).px12(),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<ListItems>(
                        isExpanded: true,
                        hint: "Select Unit".text.make(),
                        value: _unit2Value,
                        items: unitList,
                        onChanged: (value) {
                          setState(() {
                            _unit2Value = value;
                            print(_unit2Value.name);
                            if (_textField1.text.isNotEmpty) {
                              if (_ParameterValue.name == 'Time') {
                                var result = Converter.convertTime(
                                    _unit1Value.name,
                                    _unit2Value.name,
                                    _value1);
                                _textField2.text = result;
                              } else if (_ParameterValue.name == 'Length') {
                                var result = Converter.convertLength(
                                    _unit1Value.name,
                                    _unit2Value.name,
                                    _value1);
                                _textField2.text = result;
                              }
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ).px12(),
              ),
            ],
          ).px12(),
        ],
      ),
    );
  }
}
