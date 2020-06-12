import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';


class TOAST {
  success(text){
   Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 5,
    );
  }

  error(text){
   Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 3,
        // bgcolor: "#ff0000",
        // textcolor: '#ffffff'
        backgroundColor:Colors.redAccent,
        textColor: Colors.white
    );
  }
}
