import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sayrtk/Pages/AddpageStep02.dart';

class Addpage extends StatefulWidget {
  @override
  AddpageState createState() => new AddpageState();
}

class AddpageState extends State<Addpage> {
  bool _saving = false;
  List<String> _locations = ['A', 'B', 'C', 'D'];
  var _selectedLocation;
  var selectedValue;
  var _selectedsecloc;
  Widget _buildWidget() {
    return Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: ListView(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/images/default_image.jpg',
                      ),
                    )),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 0.0),
                        child: Text("Adds with pictures sells 10 times better",
                            style: TextStyle(
                                color: Color.fromRGBO(211, 220, 230, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: sf(12))))
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Vehical Location",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(156, 156, 156, 1)),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Country"),
                              Container(
                                  width: 120,
                                  height: 65,
                                  child: DropdownButtonFormField(
                                    value: _selectedLocation,
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    decoration: InputDecoration(
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
                                  ))
                            ]),
                        Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Column(
                                // mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Country"),
                                  Container(
                                      width: 120,
                                      height: 65,
                                      child: DropdownButtonFormField(
                                        value: _selectedsecloc,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        decoration: InputDecoration(
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
                                            _selectedsecloc = newValue;
                                          });
                                        },
                                      ))
                                ])),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Scan Vin"),
                        Padding(
                          padding: EdgeInsets.only(left: 4.0),
                          child: SgImages.infoIcon,
                        ),
                      ],
                    ),
                    TextFormField(
                        decoration: InputDecoration(
                            labelText: "Vin",
                            labelStyle: TextStyle(
                                color: Color.fromRGBO(211, 220, 230, 1)),
                            contentPadding: EdgeInsets.all(2.0),
                            suffixIcon: Icon(MdiIcons.barcodeScan))),
                    Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                color: Color.fromRGBO(245, 245, 245, 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                ),
                                onPressed: () {
                                  router(context, AddpageSetp02());
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
                  ],
                )
              ])
            ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "cancel",
                style: TextStyle(color: Colors.black, fontSize: sf(14)),
              ),
              SgImages.count01,
              Text("post an Ad.",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: sf(18),
                      fontWeight: FontWeight.w900))
            ]),
        elevation: 0.0,
      ),
      body: ModalProgressHUD(
          color: Colors.black,
          opacity: 0.6,
          child: _buildWidget(),
          inAsyncCall: _saving),
    );
  }
}
