import 'package:flutter/material.dart';
import 'package:sayrtk/Pages/Login.dart';
// import 'package:sayrtk/Pages/Tabbingpage.dart';
import 'Components/mk_screen_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final MkScreenUtilConfig screenConfig = const MkScreenUtilConfig(
      width: 412,
      height: 732,
      allowFontScaling: true,
    );
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        home: Builder(builder: (context) {
          MkScreenUtil.initialize(context: context, config: screenConfig);
          return Loginpage();
        }));
  }
}
