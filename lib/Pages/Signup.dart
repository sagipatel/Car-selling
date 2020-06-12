import 'package:flutter/material.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Login.dart';
import 'package:sayrtk/Pages/Tabbingpage.dart';

class Signuppage extends StatefulWidget {
  @override
  SignuppageState createState() => new SignuppageState();
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;
  bool selected = false;
  RadioModel(this.isSelected, this.buttonText, this.text);
}

class SignuppageState extends State<Signuppage> {
  bool _saving = false;
  final _formKey = GlobalKey<FormState>();
  final fullName = TextEditingController();

  final email = TextEditingController();
  final _password = TextEditingController();
  final confirmPassword = TextEditingController();
  List<RadioModel> fuelTypeData = new List<RadioModel>();
  bool autovalid = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();

    fuelTypeData.add(new RadioModel(false, 'Personal', 'April 18'));
    fuelTypeData.add(new RadioModel(false, 'Business', 'April 17'));
  }

  void showSnack(text) {
    final snackBar = new SnackBar(
      content: Text(text),
      duration: Duration(seconds: 3),
      backgroundColor: Colors.red,
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  void validation(data) {
    String _email = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
        "\\@" +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
        "(" +
        "\\." +
        "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
        ")+";

    RegExp regExp = new RegExp(_email);
    print(email.text);
    print("YUPPP");
    if (fullName.text.isEmpty) {
    } else if (email.text.isEmpty) {
      showSnack("Email id must be required");
    } else if (!regExp.hasMatch(email.text)) {
      showSnack("Enter valid email");
    } else if (_password.text.isEmpty) {
      showSnack("Password must be required");
    } else if (confirmPassword.text.isEmpty) {
    } else {
      router(context, TabbingPage());
    }
  }

  Widget _buildWidget() {
    return Container(
        color: Colors.white,
        child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: ListView(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 70),
                          child: Column(children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Hello,",
                                  style: TextStyle(
                                      fontSize: sf(26),
                                      color: Color.fromRGBO(16, 168, 229, 1),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 5),
                                child: Row(children: <Widget>[
                                  Text(
                                    "Signup to continue",
                                    style: TextStyle(
                                        fontSize: sf(22),
                                        color: Color.fromRGBO(156, 156, 156, 1),
                                        fontWeight: FontWeight.w400),
                                  )
                                ])),
                            Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Container(
                                    height: 50,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: fuelTypeData.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return new InkWell(
                                          //highlightColor: Colors.red,
                                          splashColor: Colors.blueAccent,
                                          onTap: () {
                                            setState(() {
                                              fuelTypeData.forEach((element) =>
                                                  element.isSelected = false);
                                              fuelTypeData[index].isSelected =
                                                  true;
                                            });
                                          },
                                          child: new RadioItem(
                                              fuelTypeData[index]),
                                        );
                                      },
                                    ))),
                            new Form(
                                key: _formKey,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 20.0),
                                    child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          TextFormField(
                                            // onFieldSubmitted: (v) {
                                            //   FocusScope.of(context).requestFocus(
                                            //       textSecondFocusNode);
                                            // },
                                            textInputAction:
                                                TextInputAction.next,
                                            controller: fullName,
                                            autovalidate: this.autovalid,
                                            // onSaved: (val) =>
                                            //     this._data.email = val,
                                            decoration: InputDecoration(
                                                labelText: "Full Name",
                                                labelStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        211, 220, 230, 1)),
                                                contentPadding:
                                                    EdgeInsets.all(0.0)),
                                          ),
                                          TextFormField(
                                            // onFieldSubmitted: (v) {
                                            //   FocusScope.of(context).requestFocus(
                                            //       textSecondFocusNode);
                                            // },
                                            textInputAction:
                                                TextInputAction.next,
                                            // controller: email,
                                            // autovalidate: this.autovalid,
                                            // onSaved: (val) =>
                                            //     this._data.email = val,
                                            decoration: InputDecoration(
                                                labelText: "Email",
                                                labelStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        211, 220, 230, 1)),
                                                contentPadding:
                                                    EdgeInsets.all(0.0)),
                                          ),
                                          TextFormField(
                                            // onFieldSubmitted: (v) {
                                            //   FocusScope.of(context).requestFocus(
                                            //       textSecondFocusNode);
                                            // },
                                            textInputAction:
                                                TextInputAction.next,
                                            // controller: email,
                                            // autovalidate: this.autovalid,
                                            // onSaved: (val) =>
                                            //     this._data.email = val,
                                            decoration: InputDecoration(
                                                labelText: "Password",
                                                labelStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        211, 220, 230, 1)),
                                                contentPadding:
                                                    EdgeInsets.all(0.0)),
                                          ),
                                          TextFormField(
                                            // onFieldSubmitted: (v) {
                                            //   FocusScope.of(context).requestFocus(
                                            //       textSecondFocusNode);
                                            // },
                                            textInputAction:
                                                TextInputAction.next,
                                            // controller: email,
                                            // autovalidate: this.autovalid,
                                            // onSaved: (val) =>
                                            //     this._data.email = val,
                                            decoration: InputDecoration(
                                                labelText: "Confirm password",
                                                labelStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        211, 220, 230, 1)),
                                                contentPadding:
                                                    EdgeInsets.all(0.0)),
                                          ),
                                        ]))),
                            Padding(
                                padding: EdgeInsets.only(top: 40, bottom: 80),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                        child: Text("Login",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                color: Colors.blue)),
                                        onTap: () {
                                          router(context, Loginpage());
                                          // do what you need to do when "Click here" gets clicked
                                        }),
                                    FlatButton(
                                        color: Color.fromRGBO(245, 245, 245, 2),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(18.0),
                                        ),
                                        onPressed: () {
                                          router(context, TabbingPage());
                                          // this.autovalid = true;
                                          // FocusScope.of(context)
                                          //     .requestFocus(new FocusNode());
                                          // _formKey.currentState.save();
                                          // print(this._data.email);
                                          // validation(this._data);
                                        },
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "Sign up   ",
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      5, 53, 72, 1)),
                                            ),
                                            SgImages.rightArrow
                                          ],
                                        ))
                                  ],
                                )),
                          ]),
                        ),
                      ])
                    ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("Sarytk",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: sf(20),
                  color: Color.fromRGBO(16, 168, 229, 1))),
          elevation: 0.0),
      body: ModalProgressHUD(
          color: Colors.black,
          opacity: 0.6,
          child: _buildWidget(),
          inAsyncCall: _saving),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              height: 50.0,
              width: 150.0,
              child: new Center(
                child: new Text(_item.buttonText,
                    style: new TextStyle(
                        color: _item.isSelected
                            ? Color.fromRGBO(16, 168, 229, 1)
                            : Colors.black,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
              decoration: new BoxDecoration(
                color: Colors.transparent,
                border: new Border.all(
                    width: 0.5,
                    color: _item.isSelected
                        ? Color.fromRGBO(16, 168, 229, 1)
                        : Colors.grey),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(12.0)),
              ),
            ),
          ],
        ));
  }
}
