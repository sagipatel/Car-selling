import 'package:flutter/material.dart';
// import 'Home.dart';

class Button extends StatelessWidget {
  // DrawerPage({
  //   this.top
  // });
  // final String top;
  Button(
      {this.color,
      this.label,
      this.onPressed,
      this.minWidth,
      this.margin,
      this.padding,
      this.splashColor});
  final String color;
  final String label;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double minWidth;
  final VoidCallback onPressed;
  final Color splashColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: this.margin == null ? EdgeInsets.only(top: 18.0) : this.margin,
        child: MaterialButton(
          color: this.color == null ? Colors.amber[500] : this.color,
          minWidth: this.minWidth == null ? 100.0 : this.minWidth,
          textColor: Colors.white,
          padding: this.padding == null ? EdgeInsets.all(12.0) : this.padding,
          child: new Text(this.label == null ? '' : this.label,
              style: TextStyle(fontSize: 18.0, color: Colors.white)),
          onPressed: onPressed,
          splashColor:
              this.splashColor == null ? Colors.yellowAccent : this.splashColor,
        ));
  }
}
