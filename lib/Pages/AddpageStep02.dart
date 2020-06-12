import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Addpage.dart';
import 'package:sayrtk/Pages/AddpageStep03.dart';

class AddpageSetp02 extends StatefulWidget {
  @override
  AddpageSetp02State createState() => new AddpageSetp02State();
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;
  bool selected = false;
  RadioModel(this.isSelected, this.buttonText, this.text);
}

class AddpageSetp02State extends State<AddpageSetp02> {
  var _selectedLocation;
  var _selectedLocation02;
  var ds;
  List<RadioModel> transmissionData = new List<RadioModel>();
  List<RadioModel> fuelTypeData = new List<RadioModel>();
  List<String> _locations = ['A', 'B', 'C', 'D'];
  @override
  void initState() {
    super.initState();
    transmissionData.add(new RadioModel(false, 'Auto', 'April 18'));
    transmissionData.add(new RadioModel(false, 'Manual', 'April 17'));
    fuelTypeData.add(new RadioModel(false, 'Paterol', 'April 18'));
    fuelTypeData.add(new RadioModel(false, 'Desile', 'April 17'));
  }

  @override
  Widget build(BuildContext context) {
    // List<bool> isSelected = [false, false, false];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 2.0),
                    child: Icon(Icons.arrow_back, color: Colors.black)),
                Text(
                  " back",
                  style: TextStyle(fontSize: sf(12), color: Colors.black),
                ),
              ],
            )),
        title: SgImages.count02,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text("Post an Ad.",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: sf(18))))
            ],
          )
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Vehical information",
                        style:
                            TextStyle(fontSize: sf(12), color: Colors.black26),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        router(context, Addpage());
                      },
                      child: Container(
                          child: DropdownButtonFormField(
                        value: null,
                        icon: Icon(Icons.keyboard_arrow_down),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                        ),
                        items: null,
                        // _locations.map((location) {
                        //   return DropdownMenuItem(
                        //     child: new Text(location),
                        //     value: location,
                        //   );
                        // }).toList(),
                        onChanged: (newValue) {},
                      ))),
                  Container(
                      child: DropdownButtonFormField(
                    value: _selectedLocation,
                    icon: Icon(Icons.keyboard_arrow_down),
                    decoration: InputDecoration(
                      hintText: "Model",
                      alignLabelWithHint: true,
                      labelStyle:
                          TextStyle(color: Colors.black26, fontSize: sf(12)),
                      contentPadding: EdgeInsets.all(0),
                    ),
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                  )),
                  Container(
                      padding: EdgeInsets.only(top: 8.0),
                      child: DropdownButtonFormField(
                        value: _selectedLocation02,
                        icon: Icon(Icons.keyboard_arrow_down),
                        decoration: InputDecoration(
                          hintText: "Year",
                          alignLabelWithHint: true,
                          labelStyle: TextStyle(
                              color: Colors.black26, fontSize: sf(12)),
                          contentPadding: EdgeInsets.all(0),
                        ),
                        items: _locations.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLocation02 = newValue;
                          });
                        },
                      ))
                ])),
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Vehical Transmission",
                          style: TextStyle(
                              fontSize: sf(12), color: Colors.black26),
                        ),
                      ],
                    )),
                Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: transmissionData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new InkWell(
                          //highlightColor: Colors.red,
                          splashColor: Colors.blueAccent,
                          onTap: () {
                            setState(() {
                              transmissionData.forEach(
                                  (element) => element.isSelected = false);
                              transmissionData[index].isSelected = true;
                            });
                          },
                          child: new RadioItem(transmissionData[index]),
                        );
                      },
                    )),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 8.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Fuel Type",
                          style: TextStyle(
                              fontSize: sf(12), color: Colors.black26),
                        ),
                      ],
                    )),
                Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: fuelTypeData.length,
                      itemBuilder: (BuildContext context, int index) {
                        return new InkWell(
                          //highlightColor: Colors.red,
                          splashColor: Colors.blueAccent,
                          onTap: () {
                            setState(() {
                              fuelTypeData.forEach(
                                  (element) => element.isSelected = false);
                              fuelTypeData[index].isSelected = true;
                            });
                          },
                          child: new RadioItem(fuelTypeData[index]),
                        );
                      },
                    )),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FlatButton(
                        color: Color.fromRGBO(245, 245, 245, 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          router(context, AddpageSetp03());
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Next      ",
                              style: TextStyle(
                                  color: Color.fromRGBO(5, 53, 72, 1)),
                            ),
                            SgImages.rightArrow
                          ],
                        ))
                  ],
                ))
          ])),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 50.0,
              width: 150.0,
              child: new Center(
                child: new Text(_item.buttonText,
                    style: new TextStyle(
                        color: _item.isSelected ? Colors.white : Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
              decoration: new BoxDecoration(
                color: _item.isSelected ? Colors.blue[300] : Colors.transparent,
                border: new Border.all(
                    width: 0.5,
                    color: _item.isSelected ? Colors.blueAccent : Colors.grey),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(12.0)),
              ),
            ),
          ],
        ));
  }
}
