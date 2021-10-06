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

  String result = "";

  void initState() {
    unit = GetListData.areaItemsList;
    unitList = GetListData.buildMenu(unit);
    _ParameterValue = paramList.first;
    _unit1Value = unit.first;
    _unit2Value = unit[1];
    _textField1.text = _value1 = '1';
    _textField2.text = Converter.convert(
        _ParameterValue.name, _unit1Value.value, _unit2Value.value, _value1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Unit Converter".text.xl4.white.make().centered(),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              20.heightBox,
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                padding: EdgeInsets.only(left: 10, right: 10),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<ListItems>(
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down),
                    iconEnabledColor: Colors.blue,
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
                        } else if (_ParameterValue.name == 'Mass') {
                          unit = GetListData.massItemsList;
                        } else if (_ParameterValue.name == 'Plane Angle') {
                          unit = GetListData.angleItemsList;
                        } else if (_ParameterValue.name == 'Pressure') {
                          unit = GetListData.pressureItemsList;
                        } else if (_ParameterValue.name == 'Speed') {
                          unit = GetListData.speedItemsList;
                        } else if (_ParameterValue.name == 'Temperature') {
                          unit = GetListData.temperatureItemsList;
                        } else if (_ParameterValue.name == 'Volume') {
                          unit = GetListData.volumeItemsList;
                        }
                        unitList = GetListData.buildMenu(unit);
                        _unit1Value = unit.first;
                        _unit2Value = unit[1];
                        _textField1.text = _value1 = '1';
                        if (_ParameterValue.name == 'Temperature') {
                          _textField2.text = Converter.convertTemperature(
                              _unit1Value.name, _unit2Value.name, _value1);
                        } else {
                          _textField2.text = Converter.convert(
                              _ParameterValue.name,
                              _unit1Value.value,
                              _unit2Value.value,
                              _value1);
                        }
                      });
                    },
                  ).centered(),
                ),
              ).px32().py24(),

              10.heightBox,

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Textbox for input
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<ListItems>(
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down),
                          iconEnabledColor: Colors.blue,
                          value: _unit1Value,
                          items: unitList,
                          onChanged: (value) {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            setState(() {
                              _unit1Value = value;
                              _textField1.text = _value1 = "1";
                              if (_ParameterValue.name == 'Temperature') {
                                _textField2.text = Converter.convertTemperature(
                                    _unit1Value.name,
                                    _unit2Value.name,
                                    _value1);
                              } else {
                                _textField2.text = Converter.convert(
                                    _ParameterValue.name,
                                    _unit1Value.value,
                                    _unit2Value.value,
                                    _value1);
                              }
                            });
                          },
                        ).centered(),
                      ),
                    ).px(5),
                  ),

                  //Icon between text boxes
                  Icon(Icons.arrow_right_alt),

                  //Textbox for result
                  Expanded(
                    child: new Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                          controller: _textField1,
                          decoration: InputDecoration(
                            hintText: "Enter Value",
                            //errorText: valError ? getErrorText() : null,
                          ),
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            _value1 = value;
                            if (_ParameterValue.name == 'Temperature') {
                              result = Converter.convertTemperature(
                                  _unit1Value.name, _unit2Value.name, _value1);
                            } else {
                              result = Converter.convert(
                                  _ParameterValue.name,
                                  _unit1Value.value,
                                  _unit2Value.value,
                                  _value1);
                            }
                            _textField2.text = result;
                          }),
                    ),
                  ),
                ],
              ),

              Row(mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Icon(CupertinoIcons.arrow_up_arrow_down),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ]),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border: Border.all(color: Colors.blue, width: 2),
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<ListItems>(
                          isExpanded: true,
                          icon: Icon(Icons.arrow_drop_down),
                          iconEnabledColor: Colors.blue,
                          value: _unit2Value,
                          items: unitList,
                          onChanged: (value) {
                            FocusScopeNode currentFocus =
                                FocusScope.of(context);
                            if (!currentFocus.hasPrimaryFocus) {
                              currentFocus.unfocus();
                            }
                            setState(() {
                              _unit2Value = value;
                              if (_textField1.text.isNotEmpty) {
                                if (_ParameterValue.name == 'Temperature') {
                                  result = Converter.convertTemperature(
                                      _unit1Value.name,
                                      _unit2Value.name,
                                      _value1);
                                } else {
                                  result = Converter.convert(
                                      _ParameterValue.name,
                                      _unit1Value.value,
                                      _unit2Value.value,
                                      _value1);
                                }
                              } else {
                                _textField1.text = _value1 = '1';
                                if (_ParameterValue.name == 'Temperature') {
                                  result = Converter.convertTemperature(
                                      _unit1Value.name,
                                      _unit2Value.name,
                                      _value1);
                                } else {
                                  result = Converter.convert(
                                      _ParameterValue.name,
                                      _unit1Value.value,
                                      _unit2Value.value,
                                      _value1);
                                }
                              }
                              _textField2.text = result;
                            });
                          },
                        ).centered(),
                      ),
                    ).px(5),
                  ),

                  //Icon between text boxes
                  Icon(Icons.arrow_right_alt),

                  //Textbox for result
                  Expanded(
                    child: new Padding(
                      padding: const EdgeInsets.all(10.0),
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

              // 20.heightBox,
              // //Parameter drop down menu
              // Column(children: [
              //   20.heightBox,

              //   //Unit 1 drop down menu
              //   Container(
              //     height: 40,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.white,
              //       border: Border.all(color: Colors.blue, width: 2),
              //     ),
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     child: DropdownButtonHideUnderline(
              //       child: DropdownButton<ListItems>(
              //         isExpanded: true,
              //         icon: Icon(Icons.arrow_drop_down),
              //         iconEnabledColor: Colors.blue,
              //         value: _unit1Value,
              //         items: unitList,
              //         onChanged: (value) {
              //           FocusScopeNode currentFocus = FocusScope.of(context);
              //           if (!currentFocus.hasPrimaryFocus) {
              //             currentFocus.unfocus();
              //           }
              //           setState(() {
              //             _unit1Value = value;
              //             _textField1.text = _value1 = "1";
              //             if (_ParameterValue.name == 'Temperature') {
              //               _textField2.text = Converter.convertTemperature(
              //                   _unit1Value.name, _unit2Value.name, _value1);
              //             } else {
              //               _textField2.text = Converter.convert(
              //                   _ParameterValue.name,
              //                   _unit1Value.value,
              //                   _unit2Value.value,
              //                   _value1);
              //             }
              //           });
              //         },
              //       ).centered(),
              //     ),
              //   ).px32(),
              //   10.heightBox,

              //   //Icon for converter
              //   Icon(CupertinoIcons.arrow_up_arrow_down).centered(),
              //   10.heightBox,

              //   //Unit 2 drop down menu
              //   Container(
              //     height: 40,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: Colors.white,
              //       border: Border.all(color: Colors.blue, width: 2),
              //     ),
              //     padding: EdgeInsets.only(left: 10, right: 10),
              //     child: DropdownButtonHideUnderline(
              //       child: DropdownButton<ListItems>(
              //         isExpanded: true,
              //         icon: Icon(Icons.arrow_drop_down),
              //         iconEnabledColor: Colors.blue,
              //         value: _unit2Value,
              //         items: unitList,
              //         onChanged: (value) {
              //           FocusScopeNode currentFocus = FocusScope.of(context);
              //           if (!currentFocus.hasPrimaryFocus) {
              //             currentFocus.unfocus();
              //           }
              //           setState(() {
              //             _unit2Value = value;
              //             if (_textField1.text.isNotEmpty) {
              //               if (_ParameterValue.name == 'Temperature') {
              //                 result = Converter.convertTemperature(
              //                     _unit1Value.name, _unit2Value.name, _value1);
              //               } else {
              //                 result = Converter.convert(
              //                     _ParameterValue.name,
              //                     _unit1Value.value,
              //                     _unit2Value.value,
              //                     _value1);
              //               }
              //               _textField2.text = result;
              //             }
              //           });
              //         },
              //       ).centered(),
              //     ),
              //   ).px32(),
              // ]).p12(),

              // // Row containing text boxes
            ],
          ),
        ),
      ),
    );
  }
}
