import 'package:flutter/material.dart';
import '../Components/Service.dart';
// import 'Sg_images.dart';
import 'mk_screen_util.dart';

class CategoryHorizontalList extends StatelessWidget {
  SizedBox _sizedBox = SizedBox(
    height: 4.0,
  );
  CategoryHorizontalList(
      {this.onDetailsPressed,
      this.onViewallPressed,
      this.dealTitle,
      this.offers});
  final Function onDetailsPressed;
  final Function onViewallPressed;
  final String dealTitle;
  final List offers;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        // height: ScreenUtil.getInstance().setHeight(672),

        child: Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(dealTitle ?? '',
                              style: TextStyle(
                                fontSize: sf(20),
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ))),
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
                  )),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                      padding: EdgeInsets.only(
                          left: 12.0, right: 12.0, bottom: 10.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(offers.length, (i) {
                            return GestureDetector(
                                onTap: () {
                                  onDetailsPressed(offers[i]['id']);
                                },
                                child: Container(
                                  // height: ScreenUtil.getInstance().setHeight(490),
                                  width: sw(205),
                                  margin:
                                      EdgeInsets.only(top: 10.0, right: 0.0),
                                  child: Card(
                                      elevation: 5,
                                      margin: EdgeInsets.only(
                                          left: 0.0, right: 8.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      semanticContainer: true,
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(children: <Widget>[
                                        Image.network(
                                          imageBaseurl +
                                              offers[i]['slider'][0]['image'],
                                          fit: BoxFit.fill,
                                          height: sh(135),
                                          width: sw(250),
                                        ),
                                        _sizedBox,
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.0,
                                              right: 8.0,
                                              bottom: 5.0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children:
                                                    List.generate(5, (index) {
                                                  return IconTheme(
                                                      data: IconThemeData(
                                                        size: 12,
                                                      ),
                                                      child: index <
                                                              double.parse(offers[
                                                                          i]
                                                                      ['rating']
                                                                  .toString())
                                                          ? Icon(Icons.star,
                                                              color:
                                                                  Colors.amber)
                                                          : Icon(
                                                              Icons.star,
                                                              color: Colors
                                                                  .black26,
                                                            ));
                                                }),
                                              ),
                                              Text(
                                                offers[i]['title'],
                                                style: TextStyle(
                                                    fontSize: sf(18),
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 2,
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    top: sh(15),
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text(
                                                        '\$' +
                                                            offers[i]['coupons']
                                                                    [0]
                                                                ['disc_price'],
                                                        style: TextStyle(
                                                            fontSize: sf(16),
                                                            color: Colors.green,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Stack(
                                                        children: <Widget>[
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.0),
                                                              child: Text(
                                                                '\$' +
                                                                    offers[i]['coupons']
                                                                            [0][
                                                                        'original_price'],
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        sf(14),
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            0.5),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                              )),
                                                          Positioned(
                                                            top: 0.0,
                                                            child: Container(
                                                              width: 100.0,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left: 3.0,
                                                                      right:
                                                                          0.0),
                                                              child: Divider(
                                                                indent: 3.0,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        )
                                      ])),
                                ));
                          }))))
            ],
          ),
        ));
  }
}
