import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Input.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Details.dart';

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => new HomepageState();
}

class HomepageState extends State<Homepage> {
  bool _saving = false;
  var slider = [];
  @override
  void initState() {
    super.initState();
  }

  Widget _buildWidget() {
    return Container(
        color: Colors.white,
        child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: ListView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Input(
                          margin: EdgeInsets.all(12),
                          hintText: "Enter the vechicle you're searching for",
                        )),
                    Container(
                        height: 180,
                        child: Stack(children: <Widget>[
                          Carousel(
                            boxFit: BoxFit.cover,
                            autoplay: true,
                            animationCurve: Curves.fastLinearToSlowEaseIn,
                            animationDuration: Duration(milliseconds: 500),
                            dotSize: 5.0,
                            dotIncreasedColor: Color.fromRGBO(16, 168, 229, 1),
                            dotBgColor: Colors.transparent,
                            dotPosition: DotPosition.bottomCenter,
                            dotVerticalPadding: 5.0,
                            showIndicator: true,
                            indicatorBgPadding: 7.0,
                            images: [
                              SgImages.democar01,
                              SgImages.sliderImg02,
                              SgImages.sliderImg03,
                              NetworkImage(
                                  'https://media3.s-nbcnews.com/j/newscms/2019_41/3047866/191010-japan-stalker-mc-1121_06b4c20bbf96a51dc8663f334404a899.fit-760w.JPG'),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(left: 12, top: 10),
                                  child: Text("Own your porche \n Today",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: sf(18),
                                          fontWeight: FontWeight.bold)))
                            ],
                          )
                        ])),
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
                              top: 20,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: SgImages.shareIcon,
                                  ),
                                  SgImages.favIcon
                                ],
                              )),
                          Positioned(
                              left: 20,
                              bottom: 20,
                              child: Container(
                                  height: 30,
                                  child: FlatButton(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                      ),
                                      onPressed: () {},
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
                                        borderRadius:
                                            new BorderRadius.circular(18.0),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "NEW",
                                        style: TextStyle(fontSize: sf(14)),
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
                                                color: Color.fromRGBO(
                                                    62, 94, 107, 1),
                                                fontSize: sf(12))),
                                        Text(" 2019  ",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    62, 94, 107, 1),
                                                fontSize: sf(12))),
                                        Text("Amman",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    62, 94, 107, 1),
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
                              FlatButton(
                                  onPressed: () {
                                    router(context, Detailpage());
                                  },
                                  child: Row(children: <Widget>[
                                    Text(
                                      "See all  ",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(62, 94, 107, 1)),
                                    ),
                                    SgImages.seaAllIcon
                                  ]))
                            ],
                          ))
                    ])
                  ]),
                  Column(children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(12.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                'assets/images/slider_img_01.jpg',
                              ),
                            )),
                        Positioned(
                            right: 20,
                            top: 20,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SgImages.shareIcon,
                                ),
                                SgImages.favIcon
                              ],
                            )),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: Container(
                                height: 30,
                                child: FlatButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {},
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
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {
                                      router(context, Detailpage());
                                    },
                                    child: Text(
                                      "NEW",
                                      style: TextStyle(fontSize: sf(14)),
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
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text(" 2019  ",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text("Amman",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
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
                                onPressed: () {
                                  router(context, Detailpage());
                                },
                                child: Row(children: <Widget>[
                                  Text(
                                    "See all  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1)),
                                  ),
                                  SgImages.seaAllIcon
                                ]))
                          ],
                        ))
                  ]),
                  Container(
                      padding: EdgeInsets.only(
                        left: 12.0,
                        right: 12,
                      ),
                      child: Column(children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Popular Brands",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: sf(18)),
                            )
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(top: 15),
                            height: 200,
                            child: ListView(
                                physics: ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                              padding:
                                                  EdgeInsets.only(left: 10),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: Image.asset(
                                                  'assets/images/slider_image_1.jpg',
                                                ),
                                              )),
                                          Positioned(
                                              left: 17,
                                              bottom: 15,
                                              child: Text(
                                                "MERCEDESE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: sf(14),
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ))
                                        ],
                                      ),
                                      Stack(children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.asset(
                                                'assets/images/slider_image_2.jpg',
                                              ),
                                            )),
                                        Positioned(
                                            left: 17,
                                            bottom: 15,
                                            child: Text(
                                              "BMW",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: sf(14),
                                                  fontWeight: FontWeight.w900),
                                            ))
                                      ]),
                                      Stack(children: <Widget>[
                                        Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.asset(
                                                'assets/images/slider_image_3.jpg',
                                              ),
                                            )),
                                        Positioned(
                                            left: 17,
                                            bottom: 15,
                                            child: Text(
                                              "FORD",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: sf(14),
                                                  fontWeight: FontWeight.w900),
                                            ))
                                      ])
                                    ],
                                  )
                                ])),
                      ])),
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
                            top: 20,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SgImages.shareIcon,
                                ),
                                SgImages.favIcon
                              ],
                            )),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: Container(
                                height: 30,
                                child: FlatButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {},
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
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      "NEW",
                                      style: TextStyle(fontSize: sf(14)),
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
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text(" 2019  ",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text("Amman",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
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
                                onPressed: () {
                                  router(context, Detailpage());
                                },
                                child: Row(children: <Widget>[
                                  Text(
                                    "See all  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1)),
                                  ),
                                  SgImages.seaAllIcon
                                ]))
                          ],
                        ))
                  ]),
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
                            top: 20,
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: SgImages.shareIcon,
                                ),
                                SgImages.favIcon
                              ],
                            )),
                        Positioned(
                            left: 20,
                            bottom: 20,
                            child: Container(
                                height: 30,
                                child: FlatButton(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {},
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
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {
                                      router(context, Detailpage());
                                    },
                                    child: Text(
                                      "NEW",
                                      style: TextStyle(fontSize: sf(14)),
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
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text(" 2019  ",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
                                              fontSize: sf(12))),
                                      Text("Amman",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  62, 94, 107, 1),
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
                                onPressed: () {
                                  router(context, Detailpage());
                                },
                                child: Row(children: <Widget>[
                                  Text(
                                    "See all  ",
                                    style: TextStyle(
                                        color: Color.fromRGBO(62, 94, 107, 1)),
                                  ),
                                  SgImages.seaAllIcon
                                ]))
                          ],
                        ))
                  ])
                ])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "YOUR NEXT RIDE?",
          style: TextStyle(
              color: Colors.black,
              fontSize: sf(18),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          // IconButton(
          //   icon: SgImages.filterIc,
          //   onPressed: () {},
          // ),
          SgImages.filterIc,
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: ModalProgressHUD(
          color: Colors.black,
          opacity: 0.6,
          child: _buildWidget(),
          inAsyncCall: _saving),
    );
  }
}
