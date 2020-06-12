import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';

class Finshishpage extends StatefulWidget {
  @override
  FinshishpageState createState() => new FinshishpageState();
}

class FinshishpageState extends State<Finshishpage> {
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
                    Text("My ads",
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
              Column(children: <Widget>[
                Column(children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(12.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/images/slider_img_03.jpg',
                            ),
                          )),
                      Positioned(
                          right: 20,
                          bottom: 20,
                          child: Container(
                              height: 30,
                              width: 70,
                              child: FlatButton(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "NEW",
                                    style: TextStyle(
                                        fontSize: sf(14), color: Colors.green),
                                  )))),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Text("50525 Km  ",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 94, 107, 1),
                                            fontSize: sf(12))),
                                    Text(" 2019  ",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 94, 107, 1),
                                            fontSize: sf(12))),
                                    Text("Amman",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(62, 94, 107, 1),
                                            fontSize: sf(12)))
                                  ],
                                )
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
                          FlatButton(
                              onPressed: () {},
                              child: Row(children: <Widget>[
                                Text(
                                  "View  ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(62, 94, 107, 1)),
                                ),
                                SgImages.seaAllIcon
                              ]))
                        ],
                      ))
                ])
              ])
            ])));
  }
}
