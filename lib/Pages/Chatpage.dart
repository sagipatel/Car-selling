import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Input.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Chatting.dart';

class Chatpage extends StatefulWidget {
  @override
  ChatpageState createState() => new ChatpageState();
}

class ChatpageState extends State<Chatpage> {
  bool _saving = false;

  Widget _buildWidget() {
    return Container(
        padding: EdgeInsets.only(left: 12, right: 12),
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
                  Column(children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: sf(18)),
                        )
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Input(
                          margin: EdgeInsets.all(12),
                          hintText: "Search by user or cars",
                        )),
                    Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Chats",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: sf(20)),
                          )
                        ],
                      ),
                      InkWell(
                          onTap: () {
                            router(context, Chattingpage());
                          },
                          child: ListTile(
                            leading: CircleAvatar(radius: 20),
                            title: Text(
                              "Etham",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text("data",
                                style: TextStyle(
                                    color: Color.fromRGBO(156, 156, 156, 1))),
                            trailing: Text("9:45",
                                style: TextStyle(
                                    color: Color.fromRGBO(156, 156, 156, 1))),
                          )),
                      ListTile(
                        leading: CircleAvatar(radius: 20),
                        title: Text("Sandra",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("data",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                        trailing: Text("9:45",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                      ),
                      ListTile(
                        leading: CircleAvatar(radius: 20),
                        title: Text("Lisa",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("data",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                        trailing: Text("9:45",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                      ),
                      ListTile(
                        leading: CircleAvatar(radius: 20),
                        title: Text("Mike",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("data",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                        trailing: Text("9:45",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                      ),
                      ListTile(
                        leading: CircleAvatar(radius: 20),
                        title: Text("Jennifer",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text("data",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                        trailing: Text("9:45",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                      ),
                      ListTile(
                        leading: CircleAvatar(radius: 20),
                        title: Text("Travis",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          "data",
                          style: TextStyle(
                              color: Color.fromRGBO(156, 156, 156, 1)),
                        ),
                        trailing: Text("9:45",
                            style: TextStyle(
                                color: Color.fromRGBO(156, 156, 156, 1))),
                      )
                    ])
                  ])
                ])
              ]),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Colors.black,
          //   ),
          //   onPressed: () => Navigator.pop(context),
          // ),
          title: Text("back",
              style: TextStyle(color: Colors.black, fontSize: sf(16))),
          backgroundColor: Colors.white,
          elevation: 0.0),
      body: ModalProgressHUD(
          color: Colors.black,
          opacity: 0.6,
          child: _buildWidget(),
          inAsyncCall: _saving),
    );
  }
}
