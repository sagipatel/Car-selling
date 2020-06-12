import 'package:flutter/widgets.dart';
import '../Components/ScreenUntil.dart';

class SizeConfig {
  ScreenUtil init(BuildContext context) {
//oringinal    // return ScreenUtil(width: 750, height: 1334, )..init(context);

    return ScreenUtil(
        // width: width * devicePixelRatio,
        // height: height * devicePixelRatio,
        height: 732,
        width: 412,
        allowFontScaling: true)
      ..init(context);
  }
}
