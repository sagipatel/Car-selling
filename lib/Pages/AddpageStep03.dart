import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/AddpageStep04.dart';

class AddpageSetp03 extends StatefulWidget {
  @override
  AddpageSetp03State createState() => new AddpageSetp03State();
}

class RadioModel {
  bool isSelected;
  SvgPicture icon;
  final String buttonText;
  final String text;
  bool selected = false;
  RadioModel(this.isSelected, this.buttonText, this.text, this.icon);
}

class AddpageSetp03State extends State<AddpageSetp03> {
  double buttonfontSize = sf(16);
  Color btnSelfontColor = Colors.blue;
  Color btnunSelfontColor = Colors.black26;
  Color boxcolor = Colors.transparent;
  var ds;
  bool airbafsel = false;
  bool acSel = false;
  bool electricmirriorSel = false;
  bool bluetoothsel = false;
  bool keylesssel = false;
  bool abssel = false;
  bool xenonsel = false;
  bool auxsel = false;
  bool parkingsensel = false;
  bool latherseatsel = false;
  bool auxselc = false;
  bool blutooth2sel = false;
  bool powerdoorsel = false;
  bool touchscreensel = false;
  bool ledlightsel = false;
  bool rearviewsel = false;
  bool navigationselc = false;
  bool curseselc = false;
  bool heatedselc = false;
  List<RadioModel> transmissionData = new List<RadioModel>();
  List<RadioModel> fuelTypeData = new List<RadioModel>();

  @override
  void initState() {
    super.initState();
    transmissionData
        .add(new RadioModel(false, 'Airbag', 'April 18', SgImages.airBagIc));
    transmissionData
        .add(new RadioModel(false, 'Ac', 'April 17', SgImages.acIc));
    transmissionData.add(new RadioModel(
        false, 'Electric Mirrors', 'April 18', SgImages.airBagIc));
    transmissionData
        .add(new RadioModel(false, 'Bluetooth', 'April 17', SgImages.airBagIc));
    transmissionData.add(
        new RadioModel(false, 'Key loadEntry', 'April 18', SgImages.airBagIc));
    transmissionData
        .add(new RadioModel(false, 'Manual', 'April 17', SgImages.airBagIc));
    fuelTypeData
        .add(new RadioModel(false, 'Paterol', 'April 18', SgImages.airBagIc));
    fuelTypeData
        .add(new RadioModel(false, 'Desile', 'April 17', SgImages.airBagIc));
  }

  List<Widget> _rowlist() {
    List<Widget> categoridata = [];
    fuelTypeData.forEach((f) {});
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
        title: SgImages.count03,
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
          child: ListView(
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(children: <Widget>[
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
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 12),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            airbafsel = !airbafsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              airbafsel == true
                                                  ? SgImages.selAirbag
                                                  : SgImages.airBagIc,
                                              new Text(' Airbag',
                                                  style: new TextStyle(
                                                      color: airbafsel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: airbafsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            acSel = !acSel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              acSel == true
                                                  ? SgImages.selAc
                                                  : SgImages.acIc,
                                              new Text('  AC',
                                                  style: new TextStyle(
                                                      color: acSel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: acSel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            electricmirriorSel =
                                                !electricmirriorSel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              electricmirriorSel == true
                                                  ? SgImages
                                                      .selelectronicMirrors
                                                  : SgImages
                                                      .electronicMirrorsS3,
                                              new Text(' Electoric mirrior',
                                                  style: new TextStyle(
                                                      color: electricmirriorSel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: electricmirriorSel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            bluetoothsel = !bluetoothsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              bluetoothsel == true
                                                  ? SgImages.selBluetooth
                                                  : SgImages.bluetoothIc,
                                              new Text('  Bluetooth',
                                                  style: new TextStyle(
                                                      color: bluetoothsel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: bluetoothsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            keylesssel = !keylesssel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              keylesssel == true
                                                  ? SgImages.selkeyLessEntery
                                                  : SgImages.keylessEntityS3,
                                              new Text(' Keyless Entery',
                                                  style: new TextStyle(
                                                      color: keylesssel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: keylesssel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            abssel = !abssel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              abssel == true
                                                  ? SgImages.selABS
                                                  : SgImages.abs,
                                              new Text('  ABS',
                                                  style: new TextStyle(
                                                      color: abssel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: abssel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            xenonsel = !xenonsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              xenonsel == true
                                                  ? SgImages.selxenonlights
                                                  : SgImages.xenonIc,
                                              new Text(' Xenon',
                                                  style: new TextStyle(
                                                      color: xenonsel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: xenonsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            auxsel = !auxsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              auxsel == true
                                                  ? SgImages.selAux
                                                  : SgImages.auxS3,
                                              new Text('  AUX',
                                                  style: new TextStyle(
                                                      color: auxsel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: auxsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            parkingsensel = !parkingsensel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              parkingsensel == true
                                                  ? SgImages.selparkingSensor
                                                  : SgImages.parkingLights,
                                              new Text(' Parking Sensor',
                                                  style: new TextStyle(
                                                      color: parkingsensel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: parkingsensel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            latherseatsel = !latherseatsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              latherseatsel == true
                                                  ? SgImages.sellateherSeats
                                                  : SgImages.latherSeats,
                                              new Text('  Leather Seats',
                                                  style: new TextStyle(
                                                      color: latherseatsel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: latherseatsel == true
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            blutooth2sel = !blutooth2sel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              blutooth2sel == true
                                                  ? SgImages.selBluetooth
                                                  : SgImages.bluetoothIc,
                                              new Text(' Bluetooth',
                                                  style: new TextStyle(
                                                      color: blutooth2sel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: blutooth2sel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            powerdoorsel = !powerdoorsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              powerdoorsel == true
                                                  ? SgImages.selpowerlooks
                                                  : SgImages.powerDoorlockS3,
                                              new Text('  Power Door Lock',
                                                  style: new TextStyle(
                                                      color: powerdoorsel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: powerdoorsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            touchscreensel = !touchscreensel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              touchscreensel == true
                                                  ? SgImages.seltouchscreen
                                                  : SgImages.touchScreen,
                                              new Text(' Touch Screen',
                                                  style: new TextStyle(
                                                      color: touchscreensel ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: touchscreensel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            ledlightsel = !ledlightsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              ledlightsel == true
                                                  ? SgImages.selLedlights
                                                  : SgImages.ledLights,
                                              new Text('  LED Lights',
                                                  style: new TextStyle(
                                                      color: ledlightsel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: ledlightsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            rearviewsel = !rearviewsel;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              rearviewsel == true
                                                  ? SgImages.selRearViewCamera
                                                  : SgImages.rearViewcamera,
                                              new Text(' Rear View Camera',
                                                  style: new TextStyle(
                                                      color: rearviewsel == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: rearviewsel
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            navigationselc = !navigationselc;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              navigationselc == true
                                                  ? SgImages.selNavigation
                                                  : SgImages.navigation,
                                              new Text('  Airbag',
                                                  style: new TextStyle(
                                                      color: navigationselc ==
                                                              true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: navigationselc
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            curseselc = !curseselc;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              curseselc == true
                                                  ? SgImages.selcruisControl
                                                  : SgImages.cruisControl,
                                              new Text(' Cruse Control',
                                                  style: new TextStyle(
                                                      color: curseselc == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: curseselc
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            heatedselc = !heatedselc;
                                          });
                                        },
                                        child: new Container(
                                          height: 50.0,
                                          width: 150.0,
                                          child: new Center(
                                              child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              heatedselc == true
                                                  ? SgImages.selHeatedseats
                                                  : SgImages.seatHeatIc,
                                              new Text('  Heated Seats',
                                                  style: new TextStyle(
                                                      color: heatedselc == true
                                                          ? btnSelfontColor
                                                          : btnunSelfontColor,
                                                      //fontWeight: FontWeight.bold,
                                                      fontSize:
                                                          buttonfontSize)),
                                            ],
                                          )),
                                          decoration: new BoxDecoration(
                                            color: boxcolor,
                                            border: new Border.all(
                                                width: 0.5,
                                                color: heatedselc
                                                    ? Colors.blueAccent
                                                    : Colors.grey),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    const Radius.circular(5.0)),
                                          ),
                                        )),
                                  ],
                                ))
                          ])
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                              color: Color.fromRGBO(245, 245, 245, 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: () {
                                router(context, AddpageSetp04());
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
                ])
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
                  child: Row(
                children: <Widget>[
                  _item.icon,
                  new Text(_item.buttonText,
                      style: new TextStyle(
                          color: _item.isSelected ? Colors.white : Colors.black,
                          //fontWeight: FontWeight.bold,
                          fontSize: 18.0)),
                ],
              )),
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
