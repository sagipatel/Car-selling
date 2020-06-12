import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Finish.dart';

class AddpageSetp04 extends StatefulWidget {
  @override
  AddpageSetp04State createState() => new AddpageSetp04State();
}

class AddpageSetp04State extends State<AddpageSetp04> {
  int valueHolder = 20;
  @override
  Widget build(BuildContext context) {
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
          title: SgImages.count04,
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
            padding: EdgeInsets.only(left: 12.0, right: 12.0),
            child: ListView(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(children: <Widget>[
                            Text(
                              "Vehical Information",
                              style: TextStyle(
                                  fontSize: sf(16), color: Colors.black26),
                            ),
                          ])),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                height: 50,
                                padding: EdgeInsets.all(2),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Color",
                                        labelStyle:
                                            TextStyle(color: Colors.black26)))),
                            Container(
                                height: 50,
                                padding: EdgeInsets.all(2),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Milage",
                                        labelStyle:
                                            TextStyle(color: Colors.black26)))),
                            Container(
                                height: 50,
                                padding: EdgeInsets.all(2),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Price",
                                        labelStyle:
                                            TextStyle(color: Colors.black26)))),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Slider(
                                    value: valueHolder.toDouble(),
                                    min: 1,
                                    max: 500,
                                    divisions: 200,
                                    activeColor: Colors.blue,
                                    inactiveColor: Colors.black26,
                                    label: '${valueHolder.round()}',
                                    onChanged: (double newValue) {
                                      setState(() {
                                        valueHolder = newValue.round();
                                      });
                                    },
                                    semanticFormatterCallback:
                                        (double newValue) {
                                      return '${newValue.round()}';
                                    })),
                            Container(
                                height: 50,
                                padding: EdgeInsets.all(2),
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        labelText: "Details",
                                        labelStyle:
                                            TextStyle(color: Colors.black26))))
                          ]),
                      Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FlatButton(
                                  color: Color.fromRGBO(245, 245, 245, 2),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {
                                    router(context, Finshishpage());
                                  },
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Finish      ",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(5, 53, 72, 1)),
                                      ),
                                      SgImages.rightArrow
                                    ],
                                  ))
                            ],
                          ))
                    ],
                  )
                ])));
  }
}
