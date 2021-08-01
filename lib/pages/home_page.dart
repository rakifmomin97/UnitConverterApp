import 'package:flutter/cupertino.dart';
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
          //Parameter drop down menu
          Card(
            elevation: 2,
            color: Colors.cyan[200],
            child: Column(children: [
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[700],
                  border: Border.all(),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<ListItems>(
                    isExpanded: true,
                    hint: "Select Parameter".text.make().centered(),
                    value: _ParameterValue,
                    items: GetListData.buildMenu(paramList),
                    onChanged: (value) {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
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
                        } else if (_ParameterValue.name == 'Time') {
                          unit = GetListData.timeItemsList;
                        } else if (_ParameterValue.name == 'Area') {
                          unit = GetListData.areaItemsList;
                        } else if (_ParameterValue.name ==
                            'Data Transfer Rate') {
                          unit = GetListData.dataItemsList;
                        } else if (_ParameterValue.name == 'Digital Storage') {
                          unit = GetListData.storageItemsList;
                        } else if (_ParameterValue.name == 'Energy') {
                          unit = GetListData.energyItemsList;
                        } else if (_ParameterValue.name == 'Frequency') {
                          unit = GetListData.frequencyItemsList;
                        } else if (_ParameterValue.name == 'Fuel Economy') {
                          unit = GetListData.fuelItemsList;
                        }
                        unitList = GetListData.buildMenu(unit);
                      });
                    },
                  ).centered(),
                ),
              ).px32(),
              20.heightBox,

              //Unit 1 drop down menu
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[600],
                  border: Border.all(),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<ListItems>(
                    disabledHint:
                        "Select Parameter First".text.make().centered(),
                    isExpanded: true,
                    hint: "Select Unit".text.make().centered(),
                    value: _unit1Value,
                    items: unitList,
                    onChanged: (value) {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      setState(() {
                        _unit1Value = value;
                        _textField1.text = "";
                        _textField2.text = "";
                      });
                    },
                  ).centered(),
                ),
              ).px32(),
              10.heightBox,

              //Icon for converter
              Icon(CupertinoIcons.arrow_up_arrow_down).centered(),
              10.heightBox,

              //Unit 2 drop down menu
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.brown[300],
                  border: Border.all(),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<ListItems>(
                    disabledHint:
                        "Select Parameter First".text.make().centered(),
                    isExpanded: true,
                    hint: "Select Unit".text.make().centered(),
                    value: _unit2Value,
                    items: unitList,
                    onChanged: (value) {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      setState(() {
                        _unit2Value = value;
                        print(_unit2Value.name);
                        if (_textField1.text.isNotEmpty) {
                          // if (_ParameterValue.name == 'Time') {
                          //   var result = Converter.convertTime(
                          //       _unit1Value.name, _unit2Value.name, _value1);
                          //   _textField2.text = result;
                          // } else if (_ParameterValue.name == 'Length') {
                          //   var result = Converter.convertLength(
                          //       _unit1Value.value, _unit2Value.value, _value1);
                          //   _textField2.text = result;
                          // } else if (_ParameterValue.name == 'Area') {
                          //   var result = Converter.convertArea(
                          //       _unit1Value.name, _unit2Value.name, _value1);
                          //   _textField2.text = result;
                          // }
                          var result = Converter.convert(_ParameterValue.name,
                              _unit1Value.value, _unit2Value.value, _value1);
                          _textField2.text = result;
                        }
                      });
                    },
                  ).centered(),
                ),
              ).px32(),
            ]).p12(),
          ).p(8),

          // Row containing text boxes
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              //Textbox for input
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _textField1,
                    decoration: InputDecoration(
                      hintText: "Enter Value",
                      errorText: valError ? getErrorText() : null,
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

                        // if (_ParameterValue.name == 'Time') {
                        //   var result = Converter.convertTime(
                        //       _unit1Value.name, _unit2Value.name, _value1);
                        //   _textField2.text = result;
                        // } else if (_ParameterValue.name == 'Length') {
                        //   var result = Converter.convertLength(
                        //       _unit1Value.value, _unit2Value.value, _value1);
                        //   _textField2.text = result;
                        // } else if (_ParameterValue.name == 'Area') {
                        //   var result = Converter.convertArea(
                        //       _unit1Value.name, _unit2Value.name, _value1);
                        //   _textField2.text = result;
                        // }
                        var result = Converter.convert(_ParameterValue.name,
                            _unit1Value.value, _unit2Value.value, _value1);
                        _textField2.text = result;
                      }
                    },
                  ),
                ),
              ),

              //Icon between text boxes
              Icon(Icons.arrow_right_alt),

              //Textbox for result
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    controller: _textField2,
                    enabled: false,
                    decoration: InputDecoration(
                      hintText: "Result",
                    ),
                    onChanged: (value) {
                      _value2 = value;
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getErrorText() {
    if (_ParameterValue == null) {
      return "Select Parameter First";
    } else if (_unit1Value == null || _unit2Value == null) {
      return "Select Unit First";
    } else {
      return "";
    }
  }
}
