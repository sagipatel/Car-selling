import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sayrtk/Components/Common.dart';
import 'package:sayrtk/Components/Input.dart';
import 'package:sayrtk/Components/Sg_images.dart';
import 'package:sayrtk/Components/loader.dart';
import 'package:sayrtk/Components/mk_screen_util.dart';
import 'package:sayrtk/Pages/Signup.dart';
import 'package:sayrtk/Pages/Tabbingpage.dart';

class Loginpage extends StatefulWidget {
  @override
  LoginpageState createState() => new LoginpageState();
}

class _SigninData {
  String email = '';
  String password = '';
}

class LoginpageState extends State<Loginpage> {
  bool _saving = false;
  bool autovalid = false;
  bool secure = true;
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final _password = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  _SigninData _data = new _SigninData();
  FocusNode textSecondFocusNode = new FocusNode();
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
    if (email.text.isEmpty) {
      showSnack("Email id must be required");
    } else if (!regExp.hasMatch(email.text)) {
      showSnack("Enter valid email");
    } else if (_password.text.isEmpty) {
      showSnack("Password must be required");
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
                                  "Welcome,",
                                  style: TextStyle(
                                      fontSize: sf(26),
                                      color: Color.fromRGBO(16, 168, 229, 1),
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(children: <Widget>[
                                  Text(
                                    "login to continue",
                                    style: TextStyle(
                                        fontSize: sf(20),
                                        color: Color.fromRGBO(156, 156, 156, 1),
                                        fontWeight: FontWeight.w500),
                                  )
                                ]))
                          ]),
                        ),
                        new Form(
                            key: _formKey,
                            child: Padding(
                                padding: EdgeInsets.only(top: 20.0),
                                child: new Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      TextFormField(
                                        onFieldSubmitted: (v) {
                                          FocusScope.of(context).requestFocus(
                                              textSecondFocusNode);
                                        },
                                        textInputAction: TextInputAction.next,
                                        controller: email,
                                        autovalidate: this.autovalid,
                                        onSaved: (val) =>
                                            this._data.email = val,
                                        decoration: InputDecoration(
                                            labelText: "Email",
                                            labelStyle: TextStyle(
                                                color: Color.fromRGBO(
                                                    211, 220, 230, 1)),
                                            contentPadding:
                                                EdgeInsets.all(0.0)),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 15, bottom: 8.0),
                                          child: TextFormField(
                                            obscureText: secure,
                                            focusNode: textSecondFocusNode,
                                            textInputAction: TextInputAction.go,
                                            controller: _password,
                                            autovalidate: this.autovalid,
                                            onSaved: (val) =>
                                                this._data.password = val,
                                            decoration: InputDecoration(
                                                suffixIcon: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        secure = !secure;
                                                      });
                                                    },
                                                    child: secure == false
                                                        ? Icon(MdiIcons.eye)
                                                        : Icon(
                                                            MdiIcons.eyeOff)),
                                                labelText: "password",
                                                labelStyle: TextStyle(
                                                    color: Color.fromRGBO(
                                                        211, 220, 230, 1))),
                                          )),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: <Widget>[
                                            Text("Forgot password?",
                                                style: TextStyle(
                                                    fontSize: sf(12),
                                                    color: Color.fromRGBO(
                                                        16, 168, 229, 1),
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ])
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(top: 40, bottom: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                    child: Text("Sign up",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Colors.blue)),
                                    onTap: () {
                                      router(context, Signuppage());
                                      // do what you need to do when "Click here" gets clicked
                                    }),
                                FlatButton(
                                    color: Color.fromRGBO(245, 245, 245, 2),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(18.0),
                                    ),
                                    onPressed: () {
                                      this.autovalid = true;
                                      FocusScope.of(context)
                                          .requestFocus(new FocusNode());
                                      _formKey.currentState.save();
                                      print(this._data.email);
                                      validation(this._data);
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Login   ",
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(5, 53, 72, 1)),
                                        ),
                                        SgImages.rightArrow
                                      ],
                                    ))
                              ],
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[Text("OR")],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SgImages.facebookIc,
                            Container(
                                height: 40,
                                child: VerticalDivider(
                                  color: Color.fromRGBO(245, 245, 245, 2),
                                  indent: 1.0,
                                  width: 15,
                                  thickness: 2,
                                  endIndent: 2,
                                )),
                            SgImages.googleIc
                          ],
                        )
                      ])
                    ]))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
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
