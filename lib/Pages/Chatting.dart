import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/AddpageStep04.dart';

class Chattingpage extends StatefulWidget {
  @override
  ChattingpageState createState() => new ChattingpageState();
}

class ChattingpageState extends State<Chattingpage> {
  bool visible = false;
  bool lefttxtvisible = true;
  bool rightsidevisible = true;
  bool seeAllbtnvisible = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "back",
            style: TextStyle(color: Colors.black26, fontSize: sf(18)),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Row(
                  children: <Widget>[
                    Text("Etham",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ))
          ],
        ),
        body: Container(
            child: ListView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
              Column(
                children: <Widget>[
                  Visibility(
                      visible: visible,
                      child: Column(children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 12, right: 12),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Jaguar XSA Taitinum",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 94, 107, 1),
                                            fontSize: sf(18)),
                                      ),
                                    ]),
                                Row(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 5.0),
                                    child: SgImages.infoIcon,
                                  ),
                                  Column(children: <Widget>[
                                    Text(
                                      "Estimated",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(156, 156, 156, 1),
                                          fontSize: sf(10)),
                                    ),
                                    Text(
                                      "94000\$",
                                      style: TextStyle(
                                          fontSize: sf(16),
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(156, 156, 156, 1)),
                                    ),
                                  ]),
                                  SgImages.upwardIcon,
                                ]),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Price 148,500\$*",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Row(
                              children: <Widget>[
                                Text("50525 Km  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1),
                                        fontSize: sf(12))),
                                Text(" 2019  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1),
                                        fontSize: sf(12))),
                                Text("Amman",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1),
                                        fontSize: sf(12)))
                              ],
                            )),
                      ])),
                  Stack(children: <Widget>[
                    Container(height: 80, color: Colors.red),
                    Visibility(
                        visible: lefttxtvisible,
                        child: Positioned(
                            top: 10.0,
                            left: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Jaguar XSA Taitanium AK",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: sf(16)),
                                ),
                                Text(
                                  "Price 148,500\$*",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: sf(12)),
                                )
                              ],
                            ))),
                    Visibility(
                        visible: rightsidevisible,
                        child: Positioned(
                            top: 10.0,
                            right: 10.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "2019",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: sf(16)),
                                ),
                                Text(
                                  "Amman",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: sf(12)),
                                ),
                                Text(
                                  "55562Km",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: sf(12)),
                                )
                              ],
                            ))),
                    Visibility(
                        visible: seeAllbtnvisible,
                        child: Positioned(
                            top: 15.0,
                            left: 130,
                            child: Row(children: <Widget>[
                              FlatButton(
                                  color: Color.fromRGBO(245, 245, 245, 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {
                                    router(context, AddpageSetp04());
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Next      ",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(5, 53, 72, 1)),
                                      ),
                                      SgImages.rightArrow
                                    ],
                                  ))
                            ])))
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            setState(() {
                              visible = !visible;
                              lefttxtvisible = !lefttxtvisible;
                              rightsidevisible = !rightsidevisible;
                              seeAllbtnvisible = !seeAllbtnvisible;
                            });
                          },
                          child: visible == true
                              ? SgImages.upRoundArrow
                              : SgImages.downRoundArrow)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Yesterday,9:45 AM",
                        style:
                            TextStyle(fontSize: sf(14), color: Colors.black26),
                      )
                    ],
                  ),
                  Column(children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(),
                      title: Padding(
                          padding: EdgeInsets.only(right: 30.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(18.0),
                              child: Container(
                                  height: 38,
                                  // width: 50,
                                  color: Colors.grey[200],
                                  // decoration: BoxDecoration(
                                  //     // borderRadius: BorderRadius.circular(20),
                                  //     // shape: BoxShape.rectangle,
                                  //     ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Hey when are you going?",
                                        style: TextStyle(fontSize: sf(14)),
                                      ),
                                    ],
                                  )))),
                    ),
                    ListTile(
                      trailing: CircleAvatar(),
                      title: Padding(
                          padding: EdgeInsets.only(left: 30.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(18.0),
                              child: Container(
                                  height: 38,
                                  // width: 50,
                                  color: Colors.grey[200],
                                  // decoration: BoxDecoration(
                                  //     // borderRadius: BorderRadius.circular(20),
                                  //     // shape: BoxShape.rectangle,
                                  //     ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Hey",
                                        style: TextStyle(fontSize: sf(14)),
                                      ),
                                    ],
                                  )))),
                    )
                  ])
                ],
              )
            ])),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: Container(
                height: 50,
                child: Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.add),
                        Container(
                            height: 50,
                            width: 280,
                            padding: EdgeInsets.only(left: 5.0, right: 5.0),
                            child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Write a message",
                                    hintStyle: TextStyle(
                                        color: Colors.black26,
                                        fontSize: sf(16))))),
                        Icon(Icons.send)
                      ],
                    )))));
  }
}
