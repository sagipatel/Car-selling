import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';

class Detailpage extends StatefulWidget {
  @override
  DetailpageState createState() => new DetailpageState();
}

class DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 150.0,
              floating: true,
              pinned: true,
              title: Text(
                "back",
                style: TextStyle(color: Colors.black),
              ),
              actions: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: SgImages.shareIcon,
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: SgImages.favIcon)
                  ],
                )
              ],
              onStretchTrigger: () {
                setState(() {});
                print("object");
              },
              flexibleSpace: FlexibleSpaceBar(
                  background: Stack(children: <Widget>[
                Image.asset(
                  'assets/images/slider_img_03.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    left: 20,
                    bottom: 20,
                    child: Container(
                        height: 30,
                        child: FlatButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                        height: 100.0,
                                        child: AlertDialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15.0)),
                                          title: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text("Alert Dialog",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontSize: sf(18))),
                                              Icon(Icons.close)
                                            ],
                                          ),
                                          content: Row(children: <Widget>[
                                            Flexible(
                                                child: Text(
                                              "Estimated price is what the users think the car warth is",
                                              style:
                                                  TextStyle(fontSize: sf(16)),
                                            ))
                                          ]),
                                        ));
                                  });
                            },
                            child: Text(
                              "ADD EST PRICE",
                              style: TextStyle(fontSize: sf(14)),
                            )))),
                Positioned(
                    right: 20,
                    bottom: 20,
                    child: Container(
                        height: 30,
                        width: 70,
                        child: FlatButton(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(18.0),
                            ),
                            onPressed: () {},
                            child: Text(
                              "NEW",
                              style: TextStyle(fontSize: sf(14)),
                            )))),
              ]))),
          SliverFillRemaining(
              hasScrollBody: true,
              child: Column(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Jaguar XSA Taitinum",
                                style: TextStyle(
                                    color: Color.fromRGBO(62, 94, 107, 1),
                                    fontSize: sf(18)),
                              ),
                              Row(
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
                              )
                            ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Price 148,500\$*",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(right: 5.0),
                                child: SgImages.infoIcon,
                              ),
                              Column(children: <Widget>[
                                Text(
                                  "Estimated",
                                  style: TextStyle(
                                      color: Color.fromRGBO(156, 156, 156, 1),
                                      fontSize: sf(10)),
                                ),
                                Text(
                                  "94000\$",
                                  style: TextStyle(
                                      fontSize: sf(16),
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(156, 156, 156, 1)),
                                ),
                              ]),
                              SgImages.upwardIcon,
                            ]),
                          ],
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(),
                                Padding(
                                    padding: EdgeInsets.only(left: 12),
                                    child: Text(
                                      "Etham walker",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ))
                              ],
                            )),
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 12.0),
                            child: Row(
                              children: <Widget>[
                                Text("Specification",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: sf(16))),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.batteryIc,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Battery",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: sf(10)),
                                      ),
                                      Text(
                                        "700W",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: sf(10),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.engineIc,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Engine",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: sf(10)),
                                      ),
                                      Text(
                                        "4000cc",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: sf(10),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.transIc,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Trans",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: sf(10)),
                                      ),
                                      Text(
                                        "Auto",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: sf(10),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: SgImages.breakIc,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Breaks",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: sf(10)),
                                        ),
                                        Text(
                                          "BBS",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: sf(10),
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: SgImages.wheelsIc,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Wheels",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: sf(10)),
                                        ),
                                        Text(
                                          "WDD",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: sf(10),
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: SgImages.tankIc,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Tank",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: sf(10)),
                                        ),
                                        Text(
                                          "60L",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontSize: sf(10),
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.paint,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Paint",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: sf(10)),
                                      ),
                                      Text(
                                        "White",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: sf(10),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.fuelIc,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Fuel",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: sf(10)),
                                      ),
                                      Text(
                                        "Paterol 98",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: sf(10),
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )
                        ]),
                        Column(children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(top: 12.0, bottom: 8.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Features",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: sf(16))),
                                ],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.airBagIc,
                                  ),
                                  Column(children: <Widget>[
                                    Text(
                                      "Airbags",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.black26,
                                          fontSize: sf(14)),
                                    )
                                  ])
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.seatHeatIc,
                                  ),
                                  Column(children: <Widget>[
                                    Text("Seat Heat.",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: sf(14)))
                                  ])
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 8.0),
                                    child: SgImages.xenonIc,
                                  ),
                                  Column(children: <Widget>[
                                    Text("Xenon",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: Colors.black26,
                                            fontSize: sf(14)))
                                  ])
                                ],
                              )
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: SgImages.acIc),
                                      Column(children: <Widget>[
                                        Text("AC",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: sf(14)))
                                      ])
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: SgImages.bluetoothIc,
                                      ),
                                      Column(children: <Widget>[
                                        Text("Bluetooth",
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: Colors.black26,
                                                fontSize: sf(14)))
                                      ])
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: SgImages.signallingIc,
                                      ),
                                      Text("signalling",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: sf(14)))
                                    ],
                                  )
                                ],
                              ))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 5.0),
                            child: Column(children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "See also",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: sf(16)),
                                  ),
                                ],
                              ),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Card(
                                      margin: EdgeInsets.only(top: 10.0),
                                      elevation: 5.0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Row(
                                            // crossAxisAlignment: CrossAxisAlignment.center,
                                            children: <Widget>[
                                              Container(
                                                  child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                child: Image.asset(
                                                  'assets/images/slider_img_01.jpg',
                                                  fit: BoxFit.cover,
                                                  width: sw(110),
                                                  height: 90,
                                                ),
                                              )),
                                              Expanded(
                                                  child: new Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0,
                                                                bottom: 0.0),
                                                        child: Text(
                                                          "Jaguar XSA Taitnium AK",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: sf(18)),
                                                        )),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.0,
                                                                bottom: 18.0),
                                                        child: Row(
                                                          children: <Widget>[
                                                            Text("50525 Km  ",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            62,
                                                                            94,
                                                                            107,
                                                                            1),
                                                                    fontSize:
                                                                        sf(12))),
                                                            Text(" 2019  ",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            62,
                                                                            94,
                                                                            107,
                                                                            1),
                                                                    fontSize:
                                                                        sf(12))),
                                                            Text("Amman",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            62,
                                                                            94,
                                                                            107,
                                                                            1),
                                                                    fontSize:
                                                                        sf(12)))
                                                          ],
                                                        )),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 8.0),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: <Widget>[
                                                            Text(
                                                                "Price 148,500\$*",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        sf(16),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600))
                                                          ],
                                                        ))
                                                  ]))
                                            ]),
                                      )))
                            ]))
                      ],
                    ))
              ]))
        ],
      ),
    );
  }
}
