import 'package:flutter/material.dart';
// import 'Home.dart';
class Input extends StatelessWidget {
  // DrawerPage({
  //   this.top
  // });
  // final String top;
  Input({this.hintText, this.keyboardType, this.validator,this.onSaved,this.margin,this.obscureText,this.autovalidate,this.onFieldSubmitted,this.focusNode,this.textInputAction,this.prefixIcon,this.sufixIcon,this.controller,this.maxLength,this.initialValue});
  final String keyboardType;
  final String hintText;
  final TextInputAction textInputAction;
  final EdgeInsets margin;
  final FormFieldValidator validator;
  final FormFieldSetter onFieldSubmitted;
  final ValueChanged onSaved;
  final FocusNode focusNode; 
  final bool obscureText;
  final bool autovalidate;
  final Icon prefixIcon;
  final Widget sufixIcon;
  final TextEditingController controller;
  final int maxLength;
  final String initialValue;
  setKeyboardType(val) {
    if (val == null) {
      return TextInputType.text;
    } else if (val == 'email') {
      return TextInputType.emailAddress;
    } else if (val == 'number') {
      return TextInputType.number;
    }
  }
  nullFun()
  {
   
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        margin: this.margin == null?EdgeInsets.only(top:15.0):this.margin,
        child:Material(
          elevation: 8.0,
          borderRadius: BorderRadius.all(Radius.circular(14.0)),
        child: TextFormField(
          initialValue: this.initialValue,
          maxLength: this.maxLength,
            controller: this.controller,
          decoration: InputDecoration(
            // labelText: this.hintText,
            // labelStyle: TextStyle(color: Colors.white),
            prefixIcon: this.prefixIcon,
            suffixIcon: this.sufixIcon,
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12.0),
            hintText: this.hintText,
            hintStyle: TextStyle(color: Colors.black38),
          ),
          style: TextStyle(color: Colors.black,fontSize: 16.0),
          keyboardType: setKeyboardType(this.keyboardType),
          autovalidate: this.autovalidate == null?false:this.autovalidate,
          obscureText:this.obscureText == null?false:this.obscureText,
          onSaved: onSaved,
          
          textInputAction: this.textInputAction == null ? TextInputAction.next:this.textInputAction,
          validator: validator,
          onFieldSubmitted: onFieldSubmitted,
          focusNode:this.focusNode,
        )
      ));
  }
}
