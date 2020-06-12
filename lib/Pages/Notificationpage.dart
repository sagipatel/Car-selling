import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';

class Notificationpage extends StatefulWidget {
  @override
  NotificationpageState createState() => new NotificationpageState();
}

class NotificationpageState extends State<Notificationpage> {
  bool _saving = false;

  Widget _buildWidget() {
    return ListView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(children: <Widget>[
            Column(children: <Widget>[
              Stack(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/images/slider_img_03.jpg',
                      ),
                    )),
                Positioned(right: 25, top: 20, child: SgImages.shareIcon)
              ]),
              Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text("See new ads for you recent search:jaguar",
                      style: TextStyle(
                          fontSize: sf(20),
                          color: Color.fromRGBO(62, 94, 107, 1)))),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                child: Text(
                    "We have new posts for your recent search make sure you look them all up!. Your next ride is waiting!.",
                    style: TextStyle(
                        fontSize: sf(14),
                        color: Color.fromRGBO(62, 94, 107, 1))),
              )
            ]),
            Column(children: <Widget>[
              Stack(children: <Widget>[
                Container(
                    padding: EdgeInsets.all(12.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/images/slider_img_03.jpg',
                      ),
                    )),
                Positioned(right: 25, top: 20, child: SgImages.shareIcon)
              ]),
              Padding(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Text("See new ads for you recent search:jaguar",
                      style: TextStyle(
                          fontSize: sf(20),
                          color: Color.fromRGBO(62, 94, 107, 1)))),
              Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                child: Text(
                    "We have new posts for your recent search make sure you look them all up!. Your next ride is waiting!.",
                    style: TextStyle(
                        fontSize: sf(14),
                        color: Color.fromRGBO(62, 94, 107, 1))),
              )
            ])
          ])
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        titleSpacing: 0.0,
        title: Text("back",
            style: TextStyle(color: Colors.black, fontSize: sf(14))),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(top: 15, right: 15),
              child: Text("Notifications",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: sf(18))))
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
