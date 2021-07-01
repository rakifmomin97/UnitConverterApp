import 'package:flutter/material.dart';
import 'package:unit_converter_application/models/list_items.dart';
import 'package:unit_converter_application/widgets/get_list_data.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _ParameterValue;
  var _unit1Value;
  var _unit2Value;
  List<ListItems> paramList = GetListData.parameterItemsList;
  late List<ListItems> unit;
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
          40.heightBox,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
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
                    print(GetListData.buildParameterMenu(paramList));
                    _ParameterValue = value;
                    print(_ParameterValue.name);
                    if (_ParameterValue.name == 'Length') {
                      unit = GetListData.lengthItemsList;
                      unitList = GetListData.buildlengthMenu(unit);
                    } else if (_ParameterValue.name == 'Time') {
                      unit = GetListData.timeItemsList;
                      unitList = GetListData.buildlengthMenu(unit);
                    }
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
                    decoration: InputDecoration(
                      hintText: "Enter Value",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: new Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter Value",
                    ),
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
                            print(_unit1Value.name);
                          });
                        },
                      ),
                    ),
                  ),
                ).px12().h10(context),
              ),
              Expanded(
                child: Container(
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
                            print(_unit1Value.name);
                          });
                        },
                      ),
                    ),
                  ),
                ).px12().h10(context),
              ),
            ],
          ).px12(),
          10.heightBox,
          ElevatedButton(
            onPressed: () {},
            child: "Convert".text.make(),
          )
        ],
      ),
    );
  }
}
