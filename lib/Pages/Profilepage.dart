import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Profilepage extends StatefulWidget {
  @override
  ProfilepageState createState() => new ProfilepageState();
}

class ProfilepageState extends State<Profilepage> {
  bool _saving = false;

  Widget _buildWidget() {
    return ListView(
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CircleAvatar(radius: 35),
                    Text(
                      "Pablo Escobar",
                      style: TextStyle(
                          fontSize: sf(26), fontWeight: FontWeight.w900),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 0.0),
                      child: Icon(Icons.edit),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(left: 12, right: 12, top: 15),
                child: Column(children: <Widget>[
                  ListTile(
                    leading: SgImages.myAddIc,
                    title: Text("My ads"),
                  ),
                  ListTile(
                    leading: SgImages.searchbyBrandIc,
                    title: Text("Search by brand"),
                  ),
                  ListTile(
                    leading: Icon(MdiIcons.heartOutline, color: Colors.black),
                    title: Text("Saved"),
                  ),
                  ListTile(
                    leading: SgImages.lastSeenIc,
                    title: Text("last seen"),
                  ),
                  ListTile(
                    leading: SgImages.addSubIc,
                    title: Text("Add subscription"),
                  ),
                  ListTile(
                    leading: SgImages.mymentaizedAddIc,
                    title: Text("My monetized ads"),
                  ),
                  ListTile(
                    leading: SgImages.settingIc,
                    title: Text("Settings"),
                  )
                ]))
          ])
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sarytk",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: sf(20),
                color: Color.fromRGBO(16, 168, 229, 1))),
        backgroundColor: Colors.white,
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
