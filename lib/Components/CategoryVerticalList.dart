import 'package:flutter/material.dart';
import '../Components/Service.dart';
import 'Sg_images.dart';
import 'mk_screen_util.dart';

class CategoryVerticalList extends StatelessWidget {
  CategoryVerticalList(
      {this.onDetailsPressed,
      this.onViewallPressed,
      this.dealTitle,
      this.spaOffer});
  final Function onDetailsPressed;
  final Function onViewallPressed;
  final String dealTitle;
  final List spaOffer;

  @override
  Widget build(BuildContext context) {
    print("SpaoFFER");
    print(spaOffer);
    return Container(
      margin: EdgeInsets.only(left: 12.0, right: 12.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                dealTitle,
                style: TextStyle(fontSize: sf(20), fontWeight: FontWeight.w600),
              ),
              Container(
                  height: sh(32),
                  margin: EdgeInsets.only(top: 10.0),
                  child: RaisedButton(
                    onPressed: onViewallPressed,
                    child: Text("View all"),
                    textColor: Colors.white,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                  ))
            ],
          ),
          Column(
              children: List.generate(spaOffer.length, (i) {
            return Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Card(
                  margin: EdgeInsets.only(top: 10.0),
                  elevation: 5.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                              child: Stack(children: <Widget>[
                            Container(
                                child: Image.network(
                              imageBaseurl + spaOffer[i]['slider'][0]['image'],
                              fit: BoxFit.cover,
                              width: sw(125),
                              height: 128,
                            )),
                            Positioned(
                                right: 0.0,
                                top: 8.0,
                                child: Container(
                                    height: sh(30),
                                    width: sw(70.0),
                                    decoration: new BoxDecoration(
                                        color: Color.fromRGBO(84, 185, 72, 0.6),
                                        borderRadius: new BorderRadius.only(
                                            bottomLeft:
                                                const Radius.circular(40.0),
                                            topLeft:
                                                const Radius.circular(40.0))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          spaOffer[i]['coupons'][0]
                                                  ['disc_percentage'] +
                                              "% OFF",
                                          style: TextStyle(
                                              fontSize: sf(14),
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )))
                          ])),
                          new Expanded(
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                new Row(
                                  children: <Widget>[
                                    new Expanded(
                                      child: new Container(
                                          margin: const EdgeInsets.only(
                                              top: 0.0,
                                              bottom: 0.0,
                                              right: 0.0,
                                              left: 8.0),
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  right: 12.0, top: 0.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Row(
                                                    children: List.generate(5,
                                                        (index) {
                                                      return IconTheme(
                                                          data: IconThemeData(
                                                            size: 15,
                                                          ),
                                                          child: index <
                                                                  int.parse(spaOffer[
                                                                              i]
                                                                          [
                                                                          'rating']
                                                                      .toString())
                                                              ? Icon(Icons.star,
                                                                  color: Colors
                                                                      .amber)
                                                              : Icon(
                                                                  Icons.star,
                                                                  color: Colors
                                                                      .black26,
                                                                ));
                                                    }),
                                                  ),
                                                ],
                                              ))),
                                    ),
                                  ],
                                ),
                                new Container(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 2.0),
                                    child: new Padding(
                                      padding: EdgeInsets.only(right: 10.0),
                                      child: Text(
                                        spaOffer[i]['title'],
                                        style: new TextStyle(
                                            fontSize: sf(18),
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: sf(20),
                                          color: Colors.red,
                                        ),
                                        Flexible(
                                            child: Text(spaOffer[i]['address'],
                                                style: TextStyle(
                                                    fontSize: sf(16),
                                                    color: Colors.black38),
                                                overflow:
                                                    TextOverflow.ellipsis))
                                      ],
                                    )),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(children: <Widget>[
                                      Text(
                                          '   \$' +
                                              spaOffer[i]['coupons'][0]
                                                  ['disc_price'],
                                          style: TextStyle(
                                              fontSize: sf(14),
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(
                                                  84, 185, 72, 1))),
                                      Stack(children: <Widget>[
                                        Text(
                                            '  \$' +
                                                spaOffer[i]['coupons'][0]
                                                    ['original_price'],
                                            style: TextStyle(
                                                fontSize: sf(14),
                                                color: Color.fromRGBO(
                                                    0, 0, 0, 0.5),
                                                fontWeight: FontWeight.w500)),
                                        Positioned(
                                          top: 0,
                                          child: Container(
                                            width: 100.0,
                                            margin: EdgeInsets.only(
                                                left: 3.0, right: 0.0),
                                            child: Divider(
                                              indent: 3.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        )
                                      ])
                                    ]),
                                    Row(
                                      children: <Widget>[
                                        FlatButton(
                                            onPressed: () {
                                              onDetailsPressed(
                                                  spaOffer[i]['id']);
                                            },
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  "View More ",
                                                  style: TextStyle(
                                                      fontSize: sf(12),
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                SgImages.activeHome
                                              ],
                                            )),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ));
          }))
        ],
      ),
    );
  }
}
